# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module PullRequestGenerator
  def ensure_pull_request_generation_dependencies
    PullRequestGenerator.ensure_dependencies context: self
  end

  def generate_pull_request git_remote:,
                            gem_name: nil,
                            branch_name: nil,
                            commit_message: nil,
                            pr_body: nil,
                            &block
    PullRequestGenerator.generate context: self,
                                  git_remote: git_remote,
                                  gem_name: gem_name,
                                  branch_name: branch_name,
                                  commit_message: commit_message,
                                  pr_body: pr_body,
                                  &block
  end

  @dependencies_checked = false

  class << self
    def generate context:,
                 git_remote:,
                 gem_name: nil,
                 branch_name: nil,
                 commit_message: nil,
                 pr_body: nil
      if git_remote
        ensure_dependencies context: context
        impl = Impl.new context: context,
                        gem_name: gem_name,
                        git_remote: git_remote,
                        branch_name: branch_name,
                        commit_message: commit_message,
                        pr_body: pr_body
        impl.start
        yield
        impl.finish ? :opened : :unchanged
      else
        context.logger.info "No git remote given; pull request generation disabled"
        yield
        :disabled
      end
    end

    def ensure_dependencies context:
      return if @dependencies_checked
      context.logger.info "Checking for PullRequestGenerator dependencies"
      ensure_gh_binary context: context
      ensure_git_binary context: context
      @dependencies_checked = true
    end

    def ensure_gh_binary context:
      result = context.exec ["gh", "--version"], out: :capture, e: false
      match = /^gh version (\d+)\.(\d+)\.(\d+)/.match result.captured_out.to_s
      if !result.success? || !match
        context.logger.error "gh not installed."
        context.logger.error "See https://cli.github.com/manual/installation for installation instructions."
        context.exit 1
      end
      version_val = match[1].to_i * 1_000_000 + match[2].to_i * 1000 + match[3].to_i
      version_str = "#{match[1]}.#{match[2]}.#{match[3]}"
      if version_val < 1_000_000
        context.logger.error "gh version 1.0 or later required but #{version_str} found."
        context.logger.error "See https://cli.github.com/manual/installation for installation instructions."
        context.exit 1
      end
      context.logger.info "gh version #{version_str} found"
    end

    def ensure_git_binary context:
      result = context.exec ["git", "--version"], out: :capture, e: false
      match = /^git version (\d+)\.(\d+)\.(\d+)/.match result.captured_out.to_s
      if !result.success? || !match
        context.logger.error "git not installed."
        context.logger.error "See https://git-scm.com/downloads for installation instructions."
        context.exit 1
      end
      version_val = match[1].to_i * 1_000_000 + match[2].to_i * 1000 + match[3].to_i
      version_str = "#{match[1]}.#{match[2]}.#{match[3]}"
      if version_val < 2_022_000
        context.logger.error "git version 2.22 or later required but #{version_str} found."
        context.logger.error "See https://git-scm.com/downloads for installation instructions."
        context.exit 1
      end
      context.logger.info "git version #{version_str} found"
    end
  end

  class Impl
    def initialize gem_name:,
                   git_remote:,
                   context:,
                   branch_name: nil,
                   commit_message: nil,
                   pr_body: nil
      @gem_name = gem_name
      @git_remote = git_remote
      @context = context
      @branch_name = branch_name || generate_default_branch_name
      @commit_message = commit_message || generate_default_commit_message
      @pr_body = pr_body || generate_default_pr_body
    end

    def start
      output = @context.capture(["git", "status", "-s"]).strip
      unless output.empty?
        @context.logger.error "Git checkout is not clean"
        @context.exit 1
      end
      @orig_branch_name = @context.capture(["git", "branch", "--show-current"]).strip
      @context.exec ["git", "switch", "-c", @branch_name]
      @context.logger.info ""
    end

    def finish
      output = @context.capture(["git", "status", "-s"]).strip
      result = !output.empty?
      if result
        @context.exec ["git", "add", "."]
        @context.exec ["git", "commit", "-m", @commit_message]
        @context.exec ["git", "push", "-u", @git_remote, @branch_name]
        @context.exec ["gh", "pr", "create",
                       "--title", @commit_message,
                       "--body", @pr_body,
                       "--repo", "googleapis/google-cloud-ruby"]
        @context.logger.info "Created pull request"
        @context.exec ["git", "switch", @orig_branch_name]
      else
        @context.logger.info "No files changed; no pull request created"
        @context.exec ["git", "switch", @orig_branch_name]
        @context.exec ["git", "branch", "-D", @branch_name]
      end
      @context.exec ["git", "clean", "-df"]
      result
    end

    private

    def generate_default_branch_name
      now = Time.now.utc.strftime "%Y%m%d-%H%M%S"
      ran = rand 10000
      "autopr/#{now}-#{ran}"
    end

    def generate_default_commit_message
      name = @gem_name || "(multiple gems)"
      "[CHANGE ME] Automated change to #{name}"
    end

    def generate_default_pr_body
      "Auto-created at #{Time.now} using the toys pull request generator."
    end
  end
end

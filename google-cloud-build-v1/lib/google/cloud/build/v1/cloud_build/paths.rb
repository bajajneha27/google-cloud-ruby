# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Build
      module V1
        module CloudBuild
          # Path helper methods for the CloudBuild API.
          module Paths
            ##
            # Create a fully-qualified Build resource string.
            #
            # @overload build_path(project:, build:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/builds/{build}`
            #
            #   @param project [String]
            #   @param build [String]
            #
            # @overload build_path(project:, location:, build:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/builds/{build}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param build [String]
            #
            # @return [::String]
            def build_path **args
              resources = {
                "build:project" => (proc do |project:, build:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/builds/#{build}"
                end),
                "build:location:project" => (proc do |project:, location:, build:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/builds/#{build}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified BuildTrigger resource string.
            #
            # @overload build_trigger_path(project:, trigger:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/triggers/{trigger}`
            #
            #   @param project [String]
            #   @param trigger [String]
            #
            # @overload build_trigger_path(project:, location:, trigger:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/triggers/{trigger}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param trigger [String]
            #
            # @return [::String]
            def build_trigger_path **args
              resources = {
                "project:trigger" => (proc do |project:, trigger:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/triggers/#{trigger}"
                end),
                "location:project:trigger" => (proc do |project:, location:, trigger:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/triggers/#{trigger}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified CryptoKey resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/keyRings/{keyring}/cryptoKeys/{key}`
            #
            # @param project [String]
            # @param location [String]
            # @param keyring [String]
            # @param key [String]
            #
            # @return [::String]
            def crypto_key_path project:, location:, keyring:, key:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "keyring cannot contain /" if keyring.to_s.include? "/"

              "projects/#{project}/locations/#{location}/keyRings/#{keyring}/cryptoKeys/#{key}"
            end

            ##
            # Create a fully-qualified GithubEnterpriseConfig resource string.
            #
            # @overload github_enterprise_config_path(project:, config:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/githubEnterpriseConfigs/{config}`
            #
            #   @param project [String]
            #   @param config [String]
            #
            # @overload github_enterprise_config_path(project:, location:, config:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/githubEnterpriseConfigs/{config}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param config [String]
            #
            # @return [::String]
            def github_enterprise_config_path **args
              resources = {
                "config:project" => (proc do |project:, config:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

                  "projects/#{project}/githubEnterpriseConfigs/#{config}"
                end),
                "config:location:project" => (proc do |project:, location:, config:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/githubEnterpriseConfigs/#{config}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Location resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}`
            #
            # @param project [String]
            # @param location [String]
            #
            # @return [::String]
            def location_path project:, location:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/locations/#{location}"
            end

            ##
            # Create a fully-qualified Network resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/global/networks/{network}`
            #
            # @param project [String]
            # @param network [String]
            #
            # @return [::String]
            def network_path project:, network:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/global/networks/#{network}"
            end

            ##
            # Create a fully-qualified NetworkAttachment resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/regions/{region}/networkAttachments/{networkattachment}`
            #
            # @param project [String]
            # @param region [String]
            # @param networkattachment [String]
            #
            # @return [::String]
            def network_attachment_path project:, region:, networkattachment:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "region cannot contain /" if region.to_s.include? "/"

              "projects/#{project}/regions/#{region}/networkAttachments/#{networkattachment}"
            end

            ##
            # Create a fully-qualified Project resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}`
            #
            # @param project [String]
            #
            # @return [::String]
            def project_path project:
              "projects/#{project}"
            end

            ##
            # Create a fully-qualified Repository resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/connections/{connection}/repositories/{repository}`
            #
            # @param project [String]
            # @param location [String]
            # @param connection [String]
            # @param repository [String]
            #
            # @return [::String]
            def repository_path project:, location:, connection:, repository:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"
              raise ::ArgumentError, "connection cannot contain /" if connection.to_s.include? "/"

              "projects/#{project}/locations/#{location}/connections/#{connection}/repositories/#{repository}"
            end

            ##
            # Create a fully-qualified SecretVersion resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/secrets/{secret}/versions/{version}`
            #
            # @param project [String]
            # @param secret [String]
            # @param version [String]
            #
            # @return [::String]
            def secret_version_path project:, secret:, version:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "secret cannot contain /" if secret.to_s.include? "/"

              "projects/#{project}/secrets/#{secret}/versions/#{version}"
            end

            ##
            # Create a fully-qualified ServiceAccount resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/serviceAccounts/{service_account}`
            #
            # @param project [String]
            # @param service_account [String]
            #
            # @return [::String]
            def service_account_path project:, service_account:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/serviceAccounts/#{service_account}"
            end

            ##
            # Create a fully-qualified Subscription resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/subscriptions/{subscription}`
            #
            # @param project [String]
            # @param subscription [String]
            #
            # @return [::String]
            def subscription_path project:, subscription:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/subscriptions/#{subscription}"
            end

            ##
            # Create a fully-qualified Topic resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/topics/{topic}`
            #
            # @param project [String]
            # @param topic [String]
            #
            # @return [::String]
            def topic_path project:, topic:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"

              "projects/#{project}/topics/#{topic}"
            end

            ##
            # Create a fully-qualified WorkerPool resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/workerPools/{worker_pool}`
            #
            # @param project [String]
            # @param location [String]
            # @param worker_pool [String]
            #
            # @return [::String]
            def worker_pool_path project:, location:, worker_pool:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/workerPools/#{worker_pool}"
            end

            extend self
          end
        end
      end
    end
  end
end

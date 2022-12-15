# frozen_string_literal: true

# Copyright 2022 Google LLC
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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/eventarc/publishing/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :eventarc_publishing do |config|
  config.add_field! :endpoint,      "eventarcpublishing.googleapis.com", match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
end

module Google
  module Cloud
    module Eventarc
      module Publishing
        ##
        # Create a new client object for Publisher.
        #
        # By default, this returns an instance of
        # [Google::Cloud::Eventarc::Publishing::V1::Publisher::Client](https://googleapis.dev/ruby/google-cloud-eventarc-publishing-v1/latest/Google/Cloud/Eventarc/Publishing/V1/Publisher/Client.html)
        # for a gRPC client for version V1 of the API.
        # However, you can specify a different API version by passing it in the
        # `version` parameter. If the Publisher service is
        # supported by that API version, and the corresponding gem is available, the
        # appropriate versioned client will be returned.
        #
        # ## About Publisher
        #
        # Eventarc processes events generated by an event provider and delivers them to
        # a subscriber.
        #
        # An event provider is a software-as-a-service (SaaS) system or
        # product that can generate and deliver events through Eventarc.
        #
        # A third-party event provider is an event provider from outside of Google.
        #
        # A partner is a third-party event provider that is integrated with Eventarc.
        #
        # A subscriber is a GCP customer interested in receiving events.
        #
        # Channel is a first-class Eventarc resource that is created and managed
        # by the subscriber in their GCP project. A Channel represents a subscriber's
        # intent to receive events from an event provider. A Channel is associated with
        # exactly one event provider.
        #
        # ChannelConnection is a first-class Eventarc resource that
        # is created and managed by the partner in their GCP project. A
        # ChannelConnection represents a connection between a partner and a
        # subscriber's Channel. A ChannelConnection has a one-to-one mapping with a
        # Channel.
        #
        # Publisher allows an event provider to publish events to Eventarc.
        #
        # @param version [::String, ::Symbol] The API version to connect to. Optional.
        #   Defaults to `:v1`.
        # @return [::Object] A client object for the specified version.
        #
        def self.publisher version: :v1, &block
          require "google/cloud/eventarc/publishing/#{version.to_s.downcase}"

          package_name = Google::Cloud::Eventarc::Publishing
                         .constants
                         .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                         .first
          service_module = Google::Cloud::Eventarc::Publishing.const_get(package_name).const_get(:Publisher)
          service_module.const_get(:Client).new(&block)
        end

        ##
        # Configure the google-cloud-eventarc-publishing library.
        #
        # The following configuration parameters are supported:
        #
        # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
        #   The path to the keyfile as a String, the contents of the keyfile as a
        #   Hash, or a Google::Auth::Credentials object.
        # * `lib_name` (*type:* `String`) -
        #   The library name as recorded in instrumentation and logging.
        # * `lib_version` (*type:* `String`) -
        #   The library version as recorded in instrumentation and logging.
        # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
        #   An array of interceptors that are run before calls are executed.
        # * `timeout` (*type:* `Numeric`) -
        #   Default timeout in seconds.
        # * `metadata` (*type:* `Hash{Symbol=>String}`) -
        #   Additional headers to be sent with the call.
        # * `retry_policy` (*type:* `Hash`) -
        #   The retry policy. The value is a hash with the following keys:
        #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
        #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
        #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
        #     * `:retry_codes` (*type:* `Array<String>`) -
        #       The error codes that should trigger a retry.
        #
        # @return [::Google::Cloud::Config] The default configuration used by this library
        #
        def self.configure
          yield ::Google::Cloud.configure.eventarc_publishing if block_given?

          ::Google::Cloud.configure.eventarc_publishing
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "publishing", "helpers.rb"
require "google/cloud/eventarc/publishing/helpers" if ::File.file? helper_path

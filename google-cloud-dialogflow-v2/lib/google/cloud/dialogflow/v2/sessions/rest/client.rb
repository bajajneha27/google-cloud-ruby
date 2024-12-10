# frozen_string_literal: true

# Copyright 2023 Google LLC
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

require "google/cloud/errors"
require "google/cloud/dialogflow/v2/session_pb"
require "google/cloud/dialogflow/v2/sessions/rest/service_stub"
require "google/cloud/location/rest"

module Google
  module Cloud
    module Dialogflow
      module V2
        module Sessions
          module Rest
            ##
            # REST client for the Sessions service.
            #
            # A service used for session interactions.
            #
            # For more information, see the [API interactions
            # guide](https://cloud.google.com/dialogflow/docs/api-overview).
            #
            class Client
              # @private
              API_VERSION = ""

              # @private
              DEFAULT_ENDPOINT_TEMPLATE = "dialogflow.$UNIVERSE_DOMAIN$"

              include Paths

              # @private
              attr_reader :sessions_stub

              ##
              # Configure the Sessions Client class.
              #
              # See {::Google::Cloud::Dialogflow::V2::Sessions::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @example
              #
              #   # Modify the configuration for all Sessions clients
              #   ::Google::Cloud::Dialogflow::V2::Sessions::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def self.configure
                @configure ||= begin
                  namespace = ["Google", "Cloud", "Dialogflow", "V2"]
                  parent_config = while namespace.any?
                                    parent_name = namespace.join "::"
                                    parent_const = const_get parent_name
                                    break parent_const.configure if parent_const.respond_to? :configure
                                    namespace.pop
                                  end
                  default_config = Client::Configuration.new parent_config

                  default_config.timeout = 60.0
                  default_config.retry_policy = {
                    initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config.rpcs.detect_intent.timeout = 220.0
                  default_config.rpcs.detect_intent.retry_policy = {
                    initial_delay: 0.1, max_delay: 60.0, multiplier: 1.3, retry_codes: [14]
                  }

                  default_config
                end
                yield @configure if block_given?
                @configure
              end

              ##
              # Configure the Sessions Client instance.
              #
              # The configuration is set to the derived mode, meaning that values can be changed,
              # but structural changes (adding new fields, etc.) are not allowed. Structural changes
              # should be made on {Client.configure}.
              #
              # See {::Google::Cloud::Dialogflow::V2::Sessions::Rest::Client::Configuration}
              # for a description of the configuration fields.
              #
              # @yield [config] Configure the Client client.
              # @yieldparam config [Client::Configuration]
              #
              # @return [Client::Configuration]
              #
              def configure
                yield @config if block_given?
                @config
              end

              ##
              # The effective universe domain
              #
              # @return [String]
              #
              def universe_domain
                @sessions_stub.universe_domain
              end

              ##
              # Create a new Sessions REST client object.
              #
              # @example
              #
              #   # Create a client using the default configuration
              #   client = ::Google::Cloud::Dialogflow::V2::Sessions::Rest::Client.new
              #
              #   # Create a client using a custom configuration
              #   client = ::Google::Cloud::Dialogflow::V2::Sessions::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #   end
              #
              # @yield [config] Configure the Sessions client.
              # @yieldparam config [Client::Configuration]
              #
              def initialize
                # Create the configuration object
                @config = Configuration.new Client.configure

                # Yield the configuration if needed
                yield @config if block_given?

                # Create credentials
                credentials = @config.credentials
                # Use self-signed JWT if the endpoint is unchanged from default,
                # but only if the default endpoint does not have a region prefix.
                enable_self_signed_jwt = @config.endpoint.nil? ||
                                         (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                         !@config.endpoint.split(".").first.include?("-"))
                credentials ||= Credentials.default scope: @config.scope,
                                                    enable_self_signed_jwt: enable_self_signed_jwt
                if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                  credentials = Credentials.new credentials, scope: @config.scope
                end

                @quota_project_id = @config.quota_project
                @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                @sessions_stub = ::Google::Cloud::Dialogflow::V2::Sessions::Rest::ServiceStub.new(
                  endpoint: @config.endpoint,
                  endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
                  universe_domain: @config.universe_domain,
                  credentials: credentials,
                  logger: @config.logger
                )

                @sessions_stub.logger(stub: true)&.info do |entry|
                  entry.set_system_name
                  entry.set_service
                  entry.message = "Created client for #{entry.service}"
                  entry.set_credentials_fields credentials
                  entry.set "customEndpoint", @config.endpoint if @config.endpoint
                  entry.set "defaultTimeout", @config.timeout if @config.timeout
                  entry.set "quotaProject", @quota_project_id if @quota_project_id
                end

                @location_client = Google::Cloud::Location::Locations::Rest::Client.new do |config|
                  config.credentials = credentials
                  config.quota_project = @quota_project_id
                  config.endpoint = @sessions_stub.endpoint
                  config.universe_domain = @sessions_stub.universe_domain
                  config.bindings_override = @config.bindings_override
                  config.logger = @sessions_stub.logger if config.respond_to? :logger=
                end
              end

              ##
              # Get the associated client for mix-in of the Locations.
              #
              # @return [Google::Cloud::Location::Locations::Rest::Client]
              #
              attr_reader :location_client

              ##
              # The logger used for request/response debug logging.
              #
              # @return [Logger]
              #
              def logger
                @sessions_stub.logger
              end

              # Service calls

              ##
              # Processes a natural language query and returns structured, actionable data
              # as a result. This method is not idempotent, because it may cause contexts
              # and session entity types to be updated, which in turn might affect
              # results of future queries.
              #
              # If you might use
              # [Agent Assist](https://cloud.google.com/dialogflow/docs/#aa)
              # or other CCAI products now or in the future, consider using
              # {::Google::Cloud::Dialogflow::V2::Participants::Rest::Client#analyze_content AnalyzeContent}
              # instead of `DetectIntent`. `AnalyzeContent` has additional
              # functionality for Agent Assist and other CCAI products.
              #
              # Note: Always use agent versions for production traffic.
              # See [Versions and
              # environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
              #
              # @overload detect_intent(request, options = nil)
              #   Pass arguments to `detect_intent` via a request object, either of type
              #   {::Google::Cloud::Dialogflow::V2::DetectIntentRequest} or an equivalent Hash.
              #
              #   @param request [::Google::Cloud::Dialogflow::V2::DetectIntentRequest, ::Hash]
              #     A request object representing the call parameters. Required. To specify no
              #     parameters, or to keep all the default parameter values, pass an empty Hash.
              #   @param options [::Gapic::CallOptions, ::Hash]
              #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
              #
              # @overload detect_intent(session: nil, query_params: nil, query_input: nil, output_audio_config: nil, output_audio_config_mask: nil, input_audio: nil)
              #   Pass arguments to `detect_intent` via keyword arguments. Note that at
              #   least one keyword argument is required. To specify no parameters, or to keep all
              #   the default parameter values, pass an empty Hash as a request object (see above).
              #
              #   @param session [::String]
              #     Required. The name of the session this query is sent to. Format:
              #     `projects/<Project ID>/agent/sessions/<Session ID>`, or
              #     `projects/<Project ID>/agent/environments/<Environment ID>/users/<User
              #     ID>/sessions/<Session ID>`. If `Environment ID` is not specified, we assume
              #     default 'draft' environment (`Environment ID` might be referred to as
              #     environment name at some places). If `User ID` is not specified, we are
              #     using "-". It's up to the API caller to choose an appropriate `Session ID`
              #     and `User Id`. They can be a random number or some type of user and session
              #     identifiers (preferably hashed). The length of the `Session ID` and
              #     `User ID` must not exceed 36 characters.
              #
              #     For more information, see the [API interactions
              #     guide](https://cloud.google.com/dialogflow/docs/api-overview).
              #
              #     Note: Always use agent versions for production traffic.
              #     See [Versions and
              #     environments](https://cloud.google.com/dialogflow/es/docs/agents-versions).
              #   @param query_params [::Google::Cloud::Dialogflow::V2::QueryParameters, ::Hash]
              #     The parameters of this query.
              #   @param query_input [::Google::Cloud::Dialogflow::V2::QueryInput, ::Hash]
              #     Required. The input specification. It can be set to:
              #
              #     1. an audio config which instructs the speech recognizer how to process
              #     the speech audio,
              #
              #     2. a conversational query in the form of text, or
              #
              #     3. an event that specifies which intent to trigger.
              #   @param output_audio_config [::Google::Cloud::Dialogflow::V2::OutputAudioConfig, ::Hash]
              #     Instructs the speech synthesizer how to generate the output
              #     audio. If this field is not set and agent-level speech synthesizer is not
              #     configured, no output audio is generated.
              #   @param output_audio_config_mask [::Google::Protobuf::FieldMask, ::Hash]
              #     Mask for
              #     {::Google::Cloud::Dialogflow::V2::DetectIntentRequest#output_audio_config output_audio_config}
              #     indicating which settings in this request-level config should override
              #     speech synthesizer settings defined at agent-level.
              #
              #     If unspecified or empty,
              #     {::Google::Cloud::Dialogflow::V2::DetectIntentRequest#output_audio_config output_audio_config}
              #     replaces the agent-level config in its entirety.
              #   @param input_audio [::String]
              #     The natural language speech audio to be processed. This field
              #     should be populated iff `query_input` is set to an input audio config.
              #     A single request can contain up to 1 minute of speech audio data.
              # @yield [result, operation] Access the result along with the TransportOperation object
              # @yieldparam result [::Google::Cloud::Dialogflow::V2::DetectIntentResponse]
              # @yieldparam operation [::Gapic::Rest::TransportOperation]
              #
              # @return [::Google::Cloud::Dialogflow::V2::DetectIntentResponse]
              #
              # @raise [::Google::Cloud::Error] if the REST call is aborted.
              #
              # @example Basic example
              #   require "google/cloud/dialogflow/v2"
              #
              #   # Create a client object. The client can be reused for multiple calls.
              #   client = Google::Cloud::Dialogflow::V2::Sessions::Rest::Client.new
              #
              #   # Create a request. To set request fields, pass in keyword arguments.
              #   request = Google::Cloud::Dialogflow::V2::DetectIntentRequest.new
              #
              #   # Call the detect_intent method.
              #   result = client.detect_intent request
              #
              #   # The returned object is of type Google::Cloud::Dialogflow::V2::DetectIntentResponse.
              #   p result
              #
              def detect_intent request, options = nil
                raise ::ArgumentError, "request must be provided" if request.nil?

                request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Dialogflow::V2::DetectIntentRequest

                # Converts hash and nil to an options object
                options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                # Customize the options with defaults
                call_metadata = @config.rpcs.detect_intent.metadata.to_h

                # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
                call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                  lib_name: @config.lib_name, lib_version: @config.lib_version,
                  gapic_version: ::Google::Cloud::Dialogflow::V2::VERSION,
                  transports_version_send: [:rest]

                call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
                call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                options.apply_defaults timeout:      @config.rpcs.detect_intent.timeout,
                                       metadata:     call_metadata,
                                       retry_policy: @config.rpcs.detect_intent.retry_policy

                options.apply_defaults timeout:      @config.timeout,
                                       metadata:     @config.metadata,
                                       retry_policy: @config.retry_policy

                @sessions_stub.detect_intent request, options do |result, operation|
                  yield result, operation if block_given?
                end
              rescue ::Gapic::Rest::Error => e
                raise ::Google::Cloud::Error.from_error(e)
              end

              ##
              # Configuration class for the Sessions REST API.
              #
              # This class represents the configuration for Sessions REST,
              # providing control over timeouts, retry behavior, logging, transport
              # parameters, and other low-level controls. Certain parameters can also be
              # applied individually to specific RPCs. See
              # {::Google::Cloud::Dialogflow::V2::Sessions::Rest::Client::Configuration::Rpcs}
              # for a list of RPCs that can be configured independently.
              #
              # Configuration can be applied globally to all clients, or to a single client
              # on construction.
              #
              # @example
              #
              #   # Modify the global config, setting the timeout for
              #   # detect_intent to 20 seconds,
              #   # and all remaining timeouts to 10 seconds.
              #   ::Google::Cloud::Dialogflow::V2::Sessions::Rest::Client.configure do |config|
              #     config.timeout = 10.0
              #     config.rpcs.detect_intent.timeout = 20.0
              #   end
              #
              #   # Apply the above configuration only to a new client.
              #   client = ::Google::Cloud::Dialogflow::V2::Sessions::Rest::Client.new do |config|
              #     config.timeout = 10.0
              #     config.rpcs.detect_intent.timeout = 20.0
              #   end
              #
              # @!attribute [rw] endpoint
              #   A custom service endpoint, as a hostname or hostname:port. The default is
              #   nil, indicating to use the default endpoint in the current universe domain.
              #   @return [::String,nil]
              # @!attribute [rw] credentials
              #   Credentials to send with calls. You may provide any of the following types:
              #    *  (`String`) The path to a service account key file in JSON format
              #    *  (`Hash`) A service account key as a Hash
              #    *  (`Google::Auth::Credentials`) A googleauth credentials object
              #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
              #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
              #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
              #    *  (`nil`) indicating no credentials
              #   @return [::Object]
              # @!attribute [rw] scope
              #   The OAuth scopes
              #   @return [::Array<::String>]
              # @!attribute [rw] lib_name
              #   The library name as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] lib_version
              #   The library version as recorded in instrumentation and logging
              #   @return [::String]
              # @!attribute [rw] timeout
              #   The call timeout in seconds.
              #   @return [::Numeric]
              # @!attribute [rw] metadata
              #   Additional headers to be sent with the call.
              #   @return [::Hash{::Symbol=>::String}]
              # @!attribute [rw] retry_policy
              #   The retry policy. The value is a hash with the following keys:
              #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #       trigger a retry.
              #   @return [::Hash]
              # @!attribute [rw] quota_project
              #   A separate project against which to charge quota.
              #   @return [::String]
              # @!attribute [rw] universe_domain
              #   The universe domain within which to make requests. This determines the
              #   default endpoint URL. The default value of nil uses the environment
              #   universe (usually the default "googleapis.com" universe).
              #   @return [::String,nil]
              # @!attribute [rw] logger
              #   A custom logger to use for request/response debug logging, or the value
              #   `:default` (the default) to construct a default logger, or `nil` to
              #   explicitly disable logging.
              #   @return [::Logger,:default,nil]
              #
              class Configuration
                extend ::Gapic::Config

                # @private
                # The endpoint specific to the default "googleapis.com" universe. Deprecated.
                DEFAULT_ENDPOINT = "dialogflow.googleapis.com"

                config_attr :endpoint,      nil, ::String, nil
                config_attr :credentials,   nil do |value|
                  allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                  allowed.any? { |klass| klass === value }
                end
                config_attr :scope,         nil, ::String, ::Array, nil
                config_attr :lib_name,      nil, ::String, nil
                config_attr :lib_version,   nil, ::String, nil
                config_attr :timeout,       nil, ::Numeric, nil
                config_attr :metadata,      nil, ::Hash, nil
                config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
                config_attr :quota_project, nil, ::String, nil
                config_attr :universe_domain, nil, ::String, nil

                # @private
                # Overrides for http bindings for the RPCs of this service
                # are only used when this service is used as mixin, and only
                # by the host service.
                # @return [::Hash{::Symbol=>::Array<::Gapic::Rest::GrpcTranscoder::HttpBinding>}]
                config_attr :bindings_override, {}, ::Hash, nil
                config_attr :logger, :default, ::Logger, nil, :default

                # @private
                def initialize parent_config = nil
                  @parent_config = parent_config unless parent_config.nil?

                  yield self if block_given?
                end

                ##
                # Configurations for individual RPCs
                # @return [Rpcs]
                #
                def rpcs
                  @rpcs ||= begin
                    parent_rpcs = nil
                    parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                    Rpcs.new parent_rpcs
                  end
                end

                ##
                # Configuration RPC class for the Sessions API.
                #
                # Includes fields providing the configuration for each RPC in this service.
                # Each configuration object is of type `Gapic::Config::Method` and includes
                # the following configuration fields:
                #
                #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
                #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
                #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
                #     include the following keys:
                #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
                #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
                #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
                #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
                #         trigger a retry.
                #
                class Rpcs
                  ##
                  # RPC-specific configuration for `detect_intent`
                  # @return [::Gapic::Config::Method]
                  #
                  attr_reader :detect_intent

                  # @private
                  def initialize parent_rpcs = nil
                    detect_intent_config = parent_rpcs.detect_intent if parent_rpcs.respond_to? :detect_intent
                    @detect_intent = ::Gapic::Config::Method.new detect_intent_config

                    yield self if block_given?
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end

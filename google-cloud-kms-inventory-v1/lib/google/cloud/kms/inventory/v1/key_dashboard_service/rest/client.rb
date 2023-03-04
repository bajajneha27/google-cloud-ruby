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
require "google/cloud/kms/inventory/v1/key_dashboard_service_pb"
require "google/cloud/kms/inventory/v1/key_dashboard_service/rest/service_stub"

module Google
  module Cloud
    module Kms
      module Inventory
        module V1
          module KeyDashboardService
            module Rest
              ##
              # REST client for the KeyDashboardService service.
              #
              # Provides a cross-region view of all Cloud KMS keys in a given Cloud project.
              #
              class Client
                include Paths

                # @private
                attr_reader :key_dashboard_service_stub

                ##
                # Configure the KeyDashboardService Client class.
                #
                # See {::Google::Cloud::Kms::Inventory::V1::KeyDashboardService::Rest::Client::Configuration}
                # for a description of the configuration fields.
                #
                # @example
                #
                #   # Modify the configuration for all KeyDashboardService clients
                #   ::Google::Cloud::Kms::Inventory::V1::KeyDashboardService::Rest::Client.configure do |config|
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
                    namespace = ["Google", "Cloud", "Kms", "Inventory", "V1"]
                    parent_config = while namespace.any?
                                      parent_name = namespace.join "::"
                                      parent_const = const_get parent_name
                                      break parent_const.configure if parent_const.respond_to? :configure
                                      namespace.pop
                                    end
                    default_config = Client::Configuration.new parent_config

                    default_config.rpcs.list_crypto_keys.timeout = 60.0

                    default_config
                  end
                  yield @configure if block_given?
                  @configure
                end

                ##
                # Configure the KeyDashboardService Client instance.
                #
                # The configuration is set to the derived mode, meaning that values can be changed,
                # but structural changes (adding new fields, etc.) are not allowed. Structural changes
                # should be made on {Client.configure}.
                #
                # See {::Google::Cloud::Kms::Inventory::V1::KeyDashboardService::Rest::Client::Configuration}
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
                # Create a new KeyDashboardService REST client object.
                #
                # @example
                #
                #   # Create a client using the default configuration
                #   client = ::Google::Cloud::Kms::Inventory::V1::KeyDashboardService::Rest::Client.new
                #
                #   # Create a client using a custom configuration
                #   client = ::Google::Cloud::Kms::Inventory::V1::KeyDashboardService::Rest::Client.new do |config|
                #     config.timeout = 10.0
                #   end
                #
                # @yield [config] Configure the KeyDashboardService client.
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
                  enable_self_signed_jwt = @config.endpoint == Client.configure.endpoint &&
                                           !@config.endpoint.split(".").first.include?("-")
                  credentials ||= Credentials.default scope: @config.scope,
                                                      enable_self_signed_jwt: enable_self_signed_jwt
                  if credentials.is_a?(::String) || credentials.is_a?(::Hash)
                    credentials = Credentials.new credentials, scope: @config.scope
                  end

                  @quota_project_id = @config.quota_project
                  @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

                  @key_dashboard_service_stub = ::Google::Cloud::Kms::Inventory::V1::KeyDashboardService::Rest::ServiceStub.new endpoint: @config.endpoint, credentials: credentials
                end

                # Service calls

                ##
                # Returns cryptographic keys managed by Cloud KMS in a given Cloud project.
                # Note that this data is sourced from snapshots, meaning it may not
                # completely reflect the actual state of key metadata at call time.
                #
                # @overload list_crypto_keys(request, options = nil)
                #   Pass arguments to `list_crypto_keys` via a request object, either of type
                #   {::Google::Cloud::Kms::Inventory::V1::ListCryptoKeysRequest} or an equivalent Hash.
                #
                #   @param request [::Google::Cloud::Kms::Inventory::V1::ListCryptoKeysRequest, ::Hash]
                #     A request object representing the call parameters. Required. To specify no
                #     parameters, or to keep all the default parameter values, pass an empty Hash.
                #   @param options [::Gapic::CallOptions, ::Hash]
                #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @overload list_crypto_keys(parent: nil, page_size: nil, page_token: nil)
                #   Pass arguments to `list_crypto_keys` via keyword arguments. Note that at
                #   least one keyword argument is required. To specify no parameters, or to keep all
                #   the default parameter values, pass an empty Hash as a request object (see above).
                #
                #   @param parent [::String]
                #     Required. The Google Cloud project for which to retrieve key metadata, in
                #     the format `projects/*`
                #   @param page_size [::Integer]
                #     Optional. The maximum number of keys to return. The service may return
                #     fewer than this value. If unspecified, at most 1000 keys will be returned.
                #     The maximum value is 1000; values above 1000 will be coerced to 1000.
                #   @param page_token [::String]
                #     Optional. Pass this into a subsequent request in order to receive the next
                #     page of results.
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Kms::V1::CryptoKey>]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Gapic::Rest::PagedEnumerable<::Google::Cloud::Kms::V1::CryptoKey>]
                #
                # @raise [::Google::Cloud::Error] if the REST call is aborted.
                def list_crypto_keys request, options = nil
                  raise ::ArgumentError, "request must be provided" if request.nil?

                  request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Kms::Inventory::V1::ListCryptoKeysRequest

                  # Converts hash and nil to an options object
                  options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

                  # Customize the options with defaults
                  call_metadata = @config.rpcs.list_crypto_keys.metadata.to_h

                  # Set x-goog-api-client and x-goog-user-project headers
                  call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                    lib_name: @config.lib_name, lib_version: @config.lib_version,
                    gapic_version: ::Google::Cloud::Kms::Inventory::V1::VERSION,
                    transports_version_send: [:rest]

                  call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

                  options.apply_defaults timeout:      @config.rpcs.list_crypto_keys.timeout,
                                         metadata:     call_metadata,
                                         retry_policy: @config.rpcs.list_crypto_keys.retry_policy

                  options.apply_defaults timeout:      @config.timeout,
                                         metadata:     @config.metadata,
                                         retry_policy: @config.retry_policy

                  @key_dashboard_service_stub.list_crypto_keys request, options do |result, operation|
                    result = ::Gapic::Rest::PagedEnumerable.new @key_dashboard_service_stub, :list_crypto_keys, "crypto_keys", request, result, options
                    yield result, operation if block_given?
                    return result
                  end
                rescue ::Gapic::Rest::Error => e
                  raise ::Google::Cloud::Error.from_error(e)
                end

                ##
                # Configuration class for the KeyDashboardService REST API.
                #
                # This class represents the configuration for KeyDashboardService REST,
                # providing control over timeouts, retry behavior, logging, transport
                # parameters, and other low-level controls. Certain parameters can also be
                # applied individually to specific RPCs. See
                # {::Google::Cloud::Kms::Inventory::V1::KeyDashboardService::Rest::Client::Configuration::Rpcs}
                # for a list of RPCs that can be configured independently.
                #
                # Configuration can be applied globally to all clients, or to a single client
                # on construction.
                #
                # @example
                #
                #   # Modify the global config, setting the timeout for
                #   # list_crypto_keys to 20 seconds,
                #   # and all remaining timeouts to 10 seconds.
                #   ::Google::Cloud::Kms::Inventory::V1::KeyDashboardService::Rest::Client.configure do |config|
                #     config.timeout = 10.0
                #     config.rpcs.list_crypto_keys.timeout = 20.0
                #   end
                #
                #   # Apply the above configuration only to a new client.
                #   client = ::Google::Cloud::Kms::Inventory::V1::KeyDashboardService::Rest::Client.new do |config|
                #     config.timeout = 10.0
                #     config.rpcs.list_crypto_keys.timeout = 20.0
                #   end
                #
                # @!attribute [rw] endpoint
                #   The hostname or hostname:port of the service endpoint.
                #   Defaults to `"kmsinventory.googleapis.com"`.
                #   @return [::String]
                # @!attribute [rw] credentials
                #   Credentials to send with calls. You may provide any of the following types:
                #    *  (`String`) The path to a service account key file in JSON format
                #    *  (`Hash`) A service account key as a Hash
                #    *  (`Google::Auth::Credentials`) A googleauth credentials object
                #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
                #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
                #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
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
                #
                class Configuration
                  extend ::Gapic::Config

                  config_attr :endpoint,      "kmsinventory.googleapis.com", ::String
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
                  # Configuration RPC class for the KeyDashboardService API.
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
                    # RPC-specific configuration for `list_crypto_keys`
                    # @return [::Gapic::Config::Method]
                    #
                    attr_reader :list_crypto_keys

                    # @private
                    def initialize parent_rpcs = nil
                      list_crypto_keys_config = parent_rpcs.list_crypto_keys if parent_rpcs.respond_to? :list_crypto_keys
                      @list_crypto_keys = ::Gapic::Config::Method.new list_crypto_keys_config

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
end
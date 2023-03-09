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

require "google/cloud/dialogflow/cx/v3/environment_pb"

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          module Environments
            module Rest
              ##
              # REST service stub for the Environments service.
              # Service stub contains baseline method implementations
              # including transcoding, making the REST call, and deserialing the response.
              #
              class ServiceStub
                def initialize endpoint:, credentials:
                  # These require statements are intentionally placed here to initialize
                  # the REST modules only when it's required.
                  require "gapic/rest"

                  @client_stub = ::Gapic::Rest::ClientStub.new endpoint: endpoint, credentials: credentials,
                                                               numeric_enums: true,
                                                               raise_faraday_errors: false
                end

                ##
                # Baseline implementation for the list_environments REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::ListEnvironmentsRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Dialogflow::CX::V3::ListEnvironmentsResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Dialogflow::CX::V3::ListEnvironmentsResponse]
                #   A result object deserialized from the server's reply
                def list_environments request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_list_environments_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split("=", 2) }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Dialogflow::CX::V3::ListEnvironmentsResponse.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the get_environment REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::GetEnvironmentRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Dialogflow::CX::V3::Environment]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Dialogflow::CX::V3::Environment]
                #   A result object deserialized from the server's reply
                def get_environment request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_get_environment_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split("=", 2) }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Dialogflow::CX::V3::Environment.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the create_environment REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::CreateEnvironmentRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Longrunning::Operation]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Longrunning::Operation]
                #   A result object deserialized from the server's reply
                def create_environment request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_create_environment_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split("=", 2) }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the update_environment REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::UpdateEnvironmentRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Longrunning::Operation]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Longrunning::Operation]
                #   A result object deserialized from the server's reply
                def update_environment request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_update_environment_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split("=", 2) }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the delete_environment REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::DeleteEnvironmentRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Protobuf::Empty]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Protobuf::Empty]
                #   A result object deserialized from the server's reply
                def delete_environment request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_delete_environment_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split("=", 2) }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Protobuf::Empty.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the lookup_environment_history REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::LookupEnvironmentHistoryRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Dialogflow::CX::V3::LookupEnvironmentHistoryResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Dialogflow::CX::V3::LookupEnvironmentHistoryResponse]
                #   A result object deserialized from the server's reply
                def lookup_environment_history request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_lookup_environment_history_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split("=", 2) }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Dialogflow::CX::V3::LookupEnvironmentHistoryResponse.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the run_continuous_test REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::RunContinuousTestRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Longrunning::Operation]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Longrunning::Operation]
                #   A result object deserialized from the server's reply
                def run_continuous_test request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_run_continuous_test_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split("=", 2) }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the list_continuous_test_results REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::ListContinuousTestResultsRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Cloud::Dialogflow::CX::V3::ListContinuousTestResultsResponse]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Cloud::Dialogflow::CX::V3::ListContinuousTestResultsResponse]
                #   A result object deserialized from the server's reply
                def list_continuous_test_results request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_list_continuous_test_results_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split("=", 2) }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Cloud::Dialogflow::CX::V3::ListContinuousTestResultsResponse.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # Baseline implementation for the deploy_flow REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::DeployFlowRequest]
                #   A request object representing the call parameters. Required.
                # @param options [::Gapic::CallOptions]
                #   Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
                #
                # @yield [result, operation] Access the result along with the TransportOperation object
                # @yieldparam result [::Google::Longrunning::Operation]
                # @yieldparam operation [::Gapic::Rest::TransportOperation]
                #
                # @return [::Google::Longrunning::Operation]
                #   A result object deserialized from the server's reply
                def deploy_flow request_pb, options = nil
                  raise ::ArgumentError, "request must be provided" if request_pb.nil?

                  verb, uri, query_string_params, body = ServiceStub.transcode_deploy_flow_request request_pb
                  query_string_params = if query_string_params.any?
                                          query_string_params.to_h { |p| p.split("=", 2) }
                                        else
                                          {}
                                        end

                  response = @client_stub.make_http_request(
                    verb,
                    uri:     uri,
                    body:    body || "",
                    params:  query_string_params,
                    options: options
                  )
                  operation = ::Gapic::Rest::TransportOperation.new response
                  result = ::Google::Longrunning::Operation.decode_json response.body, ignore_unknown_fields: true

                  yield result, operation if block_given?
                  result
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the list_environments REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::ListEnvironmentsRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_list_environments_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v3/{parent}/environments",
                                                            matches: [
                                                              ["parent", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the get_environment REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::GetEnvironmentRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_get_environment_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v3/{name}",
                                                            matches: [
                                                              ["name", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the create_environment REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::CreateEnvironmentRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_create_environment_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v3/{parent}/environments",
                                                            body: "environment",
                                                            matches: [
                                                              ["parent", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the update_environment REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::UpdateEnvironmentRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_update_environment_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :patch,
                                                            uri_template: "/v3/{environment.name}",
                                                            body: "environment",
                                                            matches: [
                                                              ["environment.name", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the delete_environment REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::DeleteEnvironmentRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_delete_environment_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :delete,
                                                            uri_template: "/v3/{name}",
                                                            matches: [
                                                              ["name", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the lookup_environment_history REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::LookupEnvironmentHistoryRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_lookup_environment_history_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v3/{name}:lookupEnvironmentHistory",
                                                            matches: [
                                                              ["name", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the run_continuous_test REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::RunContinuousTestRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_run_continuous_test_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v3/{environment}:runContinuousTest",
                                                            body: "*",
                                                            matches: [
                                                              ["environment", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the list_continuous_test_results REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::ListContinuousTestResultsRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_list_continuous_test_results_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :get,
                                                            uri_template: "/v3/{parent}/continuousTestResults",
                                                            matches: [
                                                              ["parent", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end

                ##
                # @private
                #
                # GRPC transcoding helper method for the deploy_flow REST call
                #
                # @param request_pb [::Google::Cloud::Dialogflow::CX::V3::DeployFlowRequest]
                #   A request object representing the call parameters. Required.
                # @return [Array(String, [String, nil], Hash{String => String})]
                #   Uri, Body, Query string parameters
                def self.transcode_deploy_flow_request request_pb
                  transcoder = Gapic::Rest::GrpcTranscoder.new
                                                          .with_bindings(
                                                            uri_method: :post,
                                                            uri_template: "/v3/{environment}:deployFlow",
                                                            body: "*",
                                                            matches: [
                                                              ["environment", %r{^projects/[^/]+/locations/[^/]+/agents/[^/]+/environments/[^/]+/?$}, false]
                                                            ]
                                                          )
                  transcoder.transcode request_pb
                end
              end
            end
          end
        end
      end
    end
  end
end
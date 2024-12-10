# frozen_string_literal: true

# Copyright 2024 Google LLC
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

require "helper"
require "gapic/rest"
require "google/shopping/merchant/accounts/v1beta/termsofserviceagreementstate_pb"
require "google/shopping/merchant/accounts/v1beta/terms_of_service_agreement_state_service/rest"


class ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :get, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_delete_request uri:, params: {}, options: {}, method_name: nil
      make_http_request :delete, uri: uri, body: nil, params: params, options: options, method_name: method_name
    end

    def make_post_request uri:, body: nil, params: {}, options: {}, method_name: nil
      make_http_request :post, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_patch_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :patch, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_put_request uri:, body:, params: {}, options: {}, method_name: nil
      make_http_request :put, uri: uri, body: body, params: params, options: options, method_name: method_name
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end
  end

  def test_get_terms_of_service_agreement_state
    # Create test objects.
    client_result = ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementState.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_terms_of_service_agreement_state_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::ServiceStub.stub :transcode_get_terms_of_service_agreement_state_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_terms_of_service_agreement_state_client_stub do
        # Create client
        client = ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_terms_of_service_agreement_state({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_terms_of_service_agreement_state name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_terms_of_service_agreement_state ::Google::Shopping::Merchant::Accounts::V1beta::GetTermsOfServiceAgreementStateRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_terms_of_service_agreement_state({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_terms_of_service_agreement_state(::Google::Shopping::Merchant::Accounts::V1beta::GetTermsOfServiceAgreementStateRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_terms_of_service_agreement_state_client_stub.call_count
      end
    end
  end

  def test_retrieve_for_application_terms_of_service_agreement_state
    # Create test objects.
    client_result = ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementState.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"

    retrieve_for_application_terms_of_service_agreement_state_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::ServiceStub.stub :transcode_retrieve_for_application_terms_of_service_agreement_state_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, retrieve_for_application_terms_of_service_agreement_state_client_stub do
        # Create client
        client = ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.retrieve_for_application_terms_of_service_agreement_state({ parent: parent }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.retrieve_for_application_terms_of_service_agreement_state parent: parent do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.retrieve_for_application_terms_of_service_agreement_state ::Google::Shopping::Merchant::Accounts::V1beta::RetrieveForApplicationTermsOfServiceAgreementStateRequest.new(parent: parent) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.retrieve_for_application_terms_of_service_agreement_state({ parent: parent }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.retrieve_for_application_terms_of_service_agreement_state(::Google::Shopping::Merchant::Accounts::V1beta::RetrieveForApplicationTermsOfServiceAgreementStateRequest.new(parent: parent), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, retrieve_for_application_terms_of_service_agreement_state_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Shopping::Merchant::Accounts::V1beta::TermsOfServiceAgreementStateService::Rest::Client::Configuration, config
  end
end

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

require "helper"
require "gapic/rest"
require "google/cloud/kms/inventory/v1/key_tracking_service_pb"
require "google/cloud/kms/inventory/v1/key_tracking_service/rest"


class ::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_count, :requests

    def initialize response, &block
      @response = response
      @block = block
      @call_count = 0
      @requests = []
    end

    def make_get_request uri:, params: {}, options: {}
      make_http_request :get, uri: uri, body: nil, params: params, options: options
    end

    def make_delete_request uri:, params: {}, options: {}
      make_http_request :delete, uri: uri, body: nil, params: params, options: options
    end

    def make_post_request uri:, body: nil, params: {}, options: {}
      make_http_request :post, uri: uri, body: body, params: params, options: options
    end

    def make_patch_request uri:, body:, params: {}, options: {}
      make_http_request :patch, uri: uri, body: body, params: params, options: options
    end

    def make_put_request uri:, body:, params: {}, options: {}
      make_http_request :put, uri: uri, body: body, params: params, options: options
    end

    def make_http_request *args, **kwargs
      @call_count += 1

      @requests << @block&.call(*args, **kwargs)

      @response
    end
  end

  def test_get_protected_resources_summary
    # Create test objects.
    client_result = ::Google::Cloud::Kms::Inventory::V1::ProtectedResourcesSummary.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_protected_resources_summary_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::ServiceStub.stub :transcode_get_protected_resources_summary_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_protected_resources_summary_client_stub do
        # Create client
        client = ::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_protected_resources_summary({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_protected_resources_summary name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_protected_resources_summary ::Google::Cloud::Kms::Inventory::V1::GetProtectedResourcesSummaryRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_protected_resources_summary({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_protected_resources_summary(::Google::Cloud::Kms::Inventory::V1::GetProtectedResourcesSummaryRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_protected_resources_summary_client_stub.call_count
      end
    end
  end

  def test_search_protected_resources
    # Create test objects.
    client_result = ::Google::Cloud::Kms::Inventory::V1::SearchProtectedResourcesResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    scope = "hello world"
    crypto_key = "hello world"
    page_size = 42
    page_token = "hello world"

    search_protected_resources_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::ServiceStub.stub :transcode_search_protected_resources_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, search_protected_resources_client_stub do
        # Create client
        client = ::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.search_protected_resources({ scope: scope, crypto_key: crypto_key, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.search_protected_resources scope: scope, crypto_key: crypto_key, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.search_protected_resources ::Google::Cloud::Kms::Inventory::V1::SearchProtectedResourcesRequest.new(scope: scope, crypto_key: crypto_key, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.search_protected_resources({ scope: scope, crypto_key: crypto_key, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.search_protected_resources(::Google::Cloud::Kms::Inventory::V1::SearchProtectedResourcesRequest.new(scope: scope, crypto_key: crypto_key, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, search_protected_resources_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    Gapic::Rest::ClientStub.stub :new, nil do
      client = ::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Kms::Inventory::V1::KeyTrackingService::Rest::Client::Configuration, config
  end
end
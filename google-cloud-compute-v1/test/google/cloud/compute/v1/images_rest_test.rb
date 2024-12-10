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

require "helper"
require "gapic/rest"
require "google/cloud/compute/v1/compute_pb"
require "google/cloud/compute/v1/images/rest"


class ::Google::Cloud::Compute::V1::Images::Rest::ClientTest < Minitest::Test
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

  def test_delete
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    image = "hello world"
    project = "hello world"
    request_id = "hello world"

    delete_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Images::Rest::ServiceStub.stub :transcode_delete_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Images::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete({ image: image, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete image: image, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete ::Google::Cloud::Compute::V1::DeleteImageRequest.new(image: image, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete({ image: image, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete(::Google::Cloud::Compute::V1::DeleteImageRequest.new(image: image, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_client_stub.call_count
      end
    end
  end

  def test_deprecate
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    deprecation_status_resource = {}
    image = "hello world"
    project = "hello world"
    request_id = "hello world"

    deprecate_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Images::Rest::ServiceStub.stub :transcode_deprecate_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, deprecate_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Images::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.deprecate({ deprecation_status_resource: deprecation_status_resource, image: image, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.deprecate deprecation_status_resource: deprecation_status_resource, image: image, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.deprecate ::Google::Cloud::Compute::V1::DeprecateImageRequest.new(deprecation_status_resource: deprecation_status_resource, image: image, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.deprecate({ deprecation_status_resource: deprecation_status_resource, image: image, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.deprecate(::Google::Cloud::Compute::V1::DeprecateImageRequest.new(deprecation_status_resource: deprecation_status_resource, image: image, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, deprecate_client_stub.call_count
      end
    end
  end

  def test_get
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Image.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    image = "hello world"
    project = "hello world"

    get_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Images::Rest::ServiceStub.stub :transcode_get_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Images::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get({ image: image, project: project }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get image: image, project: project do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get ::Google::Cloud::Compute::V1::GetImageRequest.new(image: image, project: project) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get({ image: image, project: project }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get(::Google::Cloud::Compute::V1::GetImageRequest.new(image: image, project: project), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_client_stub.call_count
      end
    end
  end

  def test_get_from_family
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Image.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    family = "hello world"
    project = "hello world"

    get_from_family_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Images::Rest::ServiceStub.stub :transcode_get_from_family_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_from_family_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Images::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_from_family({ family: family, project: project }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_from_family family: family, project: project do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_from_family ::Google::Cloud::Compute::V1::GetFromFamilyImageRequest.new(family: family, project: project) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_from_family({ family: family, project: project }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_from_family(::Google::Cloud::Compute::V1::GetFromFamilyImageRequest.new(family: family, project: project), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_from_family_client_stub.call_count
      end
    end
  end

  def test_get_iam_policy
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    options_requested_policy_version = 42
    project = "hello world"
    resource = "hello world"

    get_iam_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Images::Rest::ServiceStub.stub :transcode_get_iam_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_iam_policy_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Images::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_iam_policy({ options_requested_policy_version: options_requested_policy_version, project: project, resource: resource }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_iam_policy options_requested_policy_version: options_requested_policy_version, project: project, resource: resource do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_iam_policy ::Google::Cloud::Compute::V1::GetIamPolicyImageRequest.new(options_requested_policy_version: options_requested_policy_version, project: project, resource: resource) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_iam_policy({ options_requested_policy_version: options_requested_policy_version, project: project, resource: resource }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_iam_policy(::Google::Cloud::Compute::V1::GetIamPolicyImageRequest.new(options_requested_policy_version: options_requested_policy_version, project: project, resource: resource), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_iam_policy_client_stub.call_count
      end
    end
  end

  def test_insert
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    force_create = true
    image_resource = {}
    project = "hello world"
    request_id = "hello world"

    insert_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Images::Rest::ServiceStub.stub :transcode_insert_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, insert_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Images::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.insert({ force_create: force_create, image_resource: image_resource, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.insert force_create: force_create, image_resource: image_resource, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.insert ::Google::Cloud::Compute::V1::InsertImageRequest.new(force_create: force_create, image_resource: image_resource, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.insert({ force_create: force_create, image_resource: image_resource, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.insert(::Google::Cloud::Compute::V1::InsertImageRequest.new(force_create: force_create, image_resource: image_resource, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, insert_client_stub.call_count
      end
    end
  end

  def test_list
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::ImageList.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    filter = "hello world"
    max_results = 42
    order_by = "hello world"
    page_token = "hello world"
    project = "hello world"
    return_partial_success = true

    list_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Images::Rest::ServiceStub.stub :transcode_list_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Images::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list ::Google::Cloud::Compute::V1::ListImagesRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list(::Google::Cloud::Compute::V1::ListImagesRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_client_stub.call_count
      end
    end
  end

  def test_patch
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    image = "hello world"
    image_resource = {}
    project = "hello world"
    request_id = "hello world"

    patch_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Images::Rest::ServiceStub.stub :transcode_patch_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, patch_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Images::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.patch({ image: image, image_resource: image_resource, project: project, request_id: request_id }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.patch image: image, image_resource: image_resource, project: project, request_id: request_id do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.patch ::Google::Cloud::Compute::V1::PatchImageRequest.new(image: image, image_resource: image_resource, project: project, request_id: request_id) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.patch({ image: image, image_resource: image_resource, project: project, request_id: request_id }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.patch(::Google::Cloud::Compute::V1::PatchImageRequest.new(image: image, image_resource: image_resource, project: project, request_id: request_id), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, patch_client_stub.call_count
      end
    end
  end

  def test_set_iam_policy
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Policy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    global_set_policy_request_resource = {}
    project = "hello world"
    resource = "hello world"

    set_iam_policy_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Images::Rest::ServiceStub.stub :transcode_set_iam_policy_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, set_iam_policy_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Images::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.set_iam_policy({ global_set_policy_request_resource: global_set_policy_request_resource, project: project, resource: resource }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.set_iam_policy global_set_policy_request_resource: global_set_policy_request_resource, project: project, resource: resource do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.set_iam_policy ::Google::Cloud::Compute::V1::SetIamPolicyImageRequest.new(global_set_policy_request_resource: global_set_policy_request_resource, project: project, resource: resource) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.set_iam_policy({ global_set_policy_request_resource: global_set_policy_request_resource, project: project, resource: resource }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.set_iam_policy(::Google::Cloud::Compute::V1::SetIamPolicyImageRequest.new(global_set_policy_request_resource: global_set_policy_request_resource, project: project, resource: resource), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, set_iam_policy_client_stub.call_count
      end
    end
  end

  def test_set_labels
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    global_set_labels_request_resource = {}
    project = "hello world"
    resource = "hello world"

    set_labels_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Images::Rest::ServiceStub.stub :transcode_set_labels_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, set_labels_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Images::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.set_labels({ global_set_labels_request_resource: global_set_labels_request_resource, project: project, resource: resource }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.set_labels global_set_labels_request_resource: global_set_labels_request_resource, project: project, resource: resource do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.set_labels ::Google::Cloud::Compute::V1::SetLabelsImageRequest.new(global_set_labels_request_resource: global_set_labels_request_resource, project: project, resource: resource) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.set_labels({ global_set_labels_request_resource: global_set_labels_request_resource, project: project, resource: resource }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.set_labels(::Google::Cloud::Compute::V1::SetLabelsImageRequest.new(global_set_labels_request_resource: global_set_labels_request_resource, project: project, resource: resource), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, set_labels_client_stub.call_count
      end
    end
  end

  def test_test_iam_permissions
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::TestPermissionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    resource = "hello world"
    test_permissions_request_resource = {}

    test_iam_permissions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::Images::Rest::ServiceStub.stub :transcode_test_iam_permissions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, test_iam_permissions_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::Images::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.test_iam_permissions({ project: project, resource: resource, test_permissions_request_resource: test_permissions_request_resource }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.test_iam_permissions project: project, resource: resource, test_permissions_request_resource: test_permissions_request_resource do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.test_iam_permissions ::Google::Cloud::Compute::V1::TestIamPermissionsImageRequest.new(project: project, resource: resource, test_permissions_request_resource: test_permissions_request_resource) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.test_iam_permissions({ project: project, resource: resource, test_permissions_request_resource: test_permissions_request_resource }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.test_iam_permissions(::Google::Cloud::Compute::V1::TestIamPermissionsImageRequest.new(project: project, resource: resource, test_permissions_request_resource: test_permissions_request_resource), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, test_iam_permissions_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Compute::V1::Images::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Compute::V1::Images::Rest::Client::Configuration, config
  end
end

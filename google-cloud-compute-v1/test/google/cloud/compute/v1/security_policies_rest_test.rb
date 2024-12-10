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
require "google/cloud/compute/v1/security_policies/rest"


class ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::ClientTest < Minitest::Test
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

  def test_add_rule
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    security_policy = "hello world"
    security_policy_rule_resource = {}
    validate_only = true

    add_rule_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::ServiceStub.stub :transcode_add_rule_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, add_rule_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.add_rule({ project: project, security_policy: security_policy, security_policy_rule_resource: security_policy_rule_resource, validate_only: validate_only }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.add_rule project: project, security_policy: security_policy, security_policy_rule_resource: security_policy_rule_resource, validate_only: validate_only do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.add_rule ::Google::Cloud::Compute::V1::AddRuleSecurityPolicyRequest.new(project: project, security_policy: security_policy, security_policy_rule_resource: security_policy_rule_resource, validate_only: validate_only) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.add_rule({ project: project, security_policy: security_policy, security_policy_rule_resource: security_policy_rule_resource, validate_only: validate_only }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.add_rule(::Google::Cloud::Compute::V1::AddRuleSecurityPolicyRequest.new(project: project, security_policy: security_policy, security_policy_rule_resource: security_policy_rule_resource, validate_only: validate_only), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, add_rule_client_stub.call_count
      end
    end
  end

  def test_aggregated_list
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::SecurityPoliciesAggregatedList.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    filter = "hello world"
    include_all_scopes = true
    max_results = 42
    order_by = "hello world"
    page_token = "hello world"
    project = "hello world"
    return_partial_success = true
    service_project_number = 42

    aggregated_list_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::ServiceStub.stub :transcode_aggregated_list_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, aggregated_list_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.aggregated_list({ filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, service_project_number: service_project_number }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.aggregated_list filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, service_project_number: service_project_number do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.aggregated_list ::Google::Cloud::Compute::V1::AggregatedListSecurityPoliciesRequest.new(filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, service_project_number: service_project_number) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.aggregated_list({ filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, service_project_number: service_project_number }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.aggregated_list(::Google::Cloud::Compute::V1::AggregatedListSecurityPoliciesRequest.new(filter: filter, include_all_scopes: include_all_scopes, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success, service_project_number: service_project_number), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, aggregated_list_client_stub.call_count
      end
    end
  end

  def test_delete
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    request_id = "hello world"
    security_policy = "hello world"

    delete_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::ServiceStub.stub :transcode_delete_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete({ project: project, request_id: request_id, security_policy: security_policy }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete project: project, request_id: request_id, security_policy: security_policy do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete ::Google::Cloud::Compute::V1::DeleteSecurityPolicyRequest.new(project: project, request_id: request_id, security_policy: security_policy) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete({ project: project, request_id: request_id, security_policy: security_policy }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete(::Google::Cloud::Compute::V1::DeleteSecurityPolicyRequest.new(project: project, request_id: request_id, security_policy: security_policy), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_client_stub.call_count
      end
    end
  end

  def test_get
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::SecurityPolicy.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    security_policy = "hello world"

    get_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::ServiceStub.stub :transcode_get_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get({ project: project, security_policy: security_policy }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get project: project, security_policy: security_policy do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get ::Google::Cloud::Compute::V1::GetSecurityPolicyRequest.new(project: project, security_policy: security_policy) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get({ project: project, security_policy: security_policy }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get(::Google::Cloud::Compute::V1::GetSecurityPolicyRequest.new(project: project, security_policy: security_policy), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_client_stub.call_count
      end
    end
  end

  def test_get_rule
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::SecurityPolicyRule.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    priority = 42
    project = "hello world"
    security_policy = "hello world"

    get_rule_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::ServiceStub.stub :transcode_get_rule_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_rule_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_rule({ priority: priority, project: project, security_policy: security_policy }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_rule priority: priority, project: project, security_policy: security_policy do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_rule ::Google::Cloud::Compute::V1::GetRuleSecurityPolicyRequest.new(priority: priority, project: project, security_policy: security_policy) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_rule({ priority: priority, project: project, security_policy: security_policy }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_rule(::Google::Cloud::Compute::V1::GetRuleSecurityPolicyRequest.new(priority: priority, project: project, security_policy: security_policy), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_rule_client_stub.call_count
      end
    end
  end

  def test_insert
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    request_id = "hello world"
    security_policy_resource = {}
    validate_only = true

    insert_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::ServiceStub.stub :transcode_insert_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, insert_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.insert({ project: project, request_id: request_id, security_policy_resource: security_policy_resource, validate_only: validate_only }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.insert project: project, request_id: request_id, security_policy_resource: security_policy_resource, validate_only: validate_only do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.insert ::Google::Cloud::Compute::V1::InsertSecurityPolicyRequest.new(project: project, request_id: request_id, security_policy_resource: security_policy_resource, validate_only: validate_only) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.insert({ project: project, request_id: request_id, security_policy_resource: security_policy_resource, validate_only: validate_only }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.insert(::Google::Cloud::Compute::V1::InsertSecurityPolicyRequest.new(project: project, request_id: request_id, security_policy_resource: security_policy_resource, validate_only: validate_only), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, insert_client_stub.call_count
      end
    end
  end

  def test_list
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::SecurityPolicyList.new
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

    ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::ServiceStub.stub :transcode_list_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client.new do |config|
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
        client.list ::Google::Cloud::Compute::V1::ListSecurityPoliciesRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list(::Google::Cloud::Compute::V1::ListSecurityPoliciesRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_client_stub.call_count
      end
    end
  end

  def test_list_preconfigured_expression_sets
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::SecurityPoliciesListPreconfiguredExpressionSetsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    filter = "hello world"
    max_results = 42
    order_by = "hello world"
    page_token = "hello world"
    project = "hello world"
    return_partial_success = true

    list_preconfigured_expression_sets_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::ServiceStub.stub :transcode_list_preconfigured_expression_sets_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_preconfigured_expression_sets_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_preconfigured_expression_sets({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_preconfigured_expression_sets filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_preconfigured_expression_sets ::Google::Cloud::Compute::V1::ListPreconfiguredExpressionSetsSecurityPoliciesRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_preconfigured_expression_sets({ filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_preconfigured_expression_sets(::Google::Cloud::Compute::V1::ListPreconfiguredExpressionSetsSecurityPoliciesRequest.new(filter: filter, max_results: max_results, order_by: order_by, page_token: page_token, project: project, return_partial_success: return_partial_success), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_preconfigured_expression_sets_client_stub.call_count
      end
    end
  end

  def test_patch
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    project = "hello world"
    request_id = "hello world"
    security_policy = "hello world"
    security_policy_resource = {}
    update_mask = "hello world"

    patch_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::ServiceStub.stub :transcode_patch_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, patch_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.patch({ project: project, request_id: request_id, security_policy: security_policy, security_policy_resource: security_policy_resource, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.patch project: project, request_id: request_id, security_policy: security_policy, security_policy_resource: security_policy_resource, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.patch ::Google::Cloud::Compute::V1::PatchSecurityPolicyRequest.new(project: project, request_id: request_id, security_policy: security_policy, security_policy_resource: security_policy_resource, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.patch({ project: project, request_id: request_id, security_policy: security_policy, security_policy_resource: security_policy_resource, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.patch(::Google::Cloud::Compute::V1::PatchSecurityPolicyRequest.new(project: project, request_id: request_id, security_policy: security_policy, security_policy_resource: security_policy_resource, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, patch_client_stub.call_count
      end
    end
  end

  def test_patch_rule
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    priority = 42
    project = "hello world"
    security_policy = "hello world"
    security_policy_rule_resource = {}
    update_mask = "hello world"
    validate_only = true

    patch_rule_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::ServiceStub.stub :transcode_patch_rule_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, patch_rule_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.patch_rule({ priority: priority, project: project, security_policy: security_policy, security_policy_rule_resource: security_policy_rule_resource, update_mask: update_mask, validate_only: validate_only }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.patch_rule priority: priority, project: project, security_policy: security_policy, security_policy_rule_resource: security_policy_rule_resource, update_mask: update_mask, validate_only: validate_only do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.patch_rule ::Google::Cloud::Compute::V1::PatchRuleSecurityPolicyRequest.new(priority: priority, project: project, security_policy: security_policy, security_policy_rule_resource: security_policy_rule_resource, update_mask: update_mask, validate_only: validate_only) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.patch_rule({ priority: priority, project: project, security_policy: security_policy, security_policy_rule_resource: security_policy_rule_resource, update_mask: update_mask, validate_only: validate_only }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.patch_rule(::Google::Cloud::Compute::V1::PatchRuleSecurityPolicyRequest.new(priority: priority, project: project, security_policy: security_policy, security_policy_rule_resource: security_policy_rule_resource, update_mask: update_mask, validate_only: validate_only), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, patch_rule_client_stub.call_count
      end
    end
  end

  def test_remove_rule
    # Create test objects.
    client_result = ::Google::Cloud::Compute::V1::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    priority = 42
    project = "hello world"
    security_policy = "hello world"

    remove_rule_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::ServiceStub.stub :transcode_remove_rule_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, remove_rule_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.remove_rule({ priority: priority, project: project, security_policy: security_policy }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.remove_rule priority: priority, project: project, security_policy: security_policy do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.remove_rule ::Google::Cloud::Compute::V1::RemoveRuleSecurityPolicyRequest.new(priority: priority, project: project, security_policy: security_policy) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.remove_rule({ priority: priority, project: project, security_policy: security_policy }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.remove_rule(::Google::Cloud::Compute::V1::RemoveRuleSecurityPolicyRequest.new(priority: priority, project: project, security_policy: security_policy), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, remove_rule_client_stub.call_count
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

    ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::ServiceStub.stub :transcode_set_labels_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, set_labels_client_stub do
        # Create client
        client = ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client.new do |config|
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
        client.set_labels ::Google::Cloud::Compute::V1::SetLabelsSecurityPolicyRequest.new(global_set_labels_request_resource: global_set_labels_request_resource, project: project, resource: resource) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.set_labels({ global_set_labels_request_resource: global_set_labels_request_resource, project: project, resource: resource }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.set_labels(::Google::Cloud::Compute::V1::SetLabelsSecurityPolicyRequest.new(global_set_labels_request_resource: global_set_labels_request_resource, project: project, resource: resource), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, set_labels_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Compute::V1::SecurityPolicies::Rest::Client::Configuration, config
  end
end

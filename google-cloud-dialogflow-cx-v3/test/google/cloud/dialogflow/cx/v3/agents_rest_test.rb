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
require "google/cloud/dialogflow/cx/v3/agent_pb"
require "google/cloud/dialogflow/cx/v3/agents/rest"


class ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::ClientTest < Minitest::Test
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

    def logger
      nil
    end
  end

  def test_list_agents
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::ListAgentsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_agents_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::ServiceStub.stub :transcode_list_agents_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_agents_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_agents({ parent: parent, page_size: page_size, page_token: page_token }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_agents parent: parent, page_size: page_size, page_token: page_token do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_agents ::Google::Cloud::Dialogflow::CX::V3::ListAgentsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_agents({ parent: parent, page_size: page_size, page_token: page_token }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_agents(::Google::Cloud::Dialogflow::CX::V3::ListAgentsRequest.new(parent: parent, page_size: page_size, page_token: page_token), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_agents_client_stub.call_count
      end
    end
  end

  def test_get_agent
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::Agent.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_agent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::ServiceStub.stub :transcode_get_agent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_agent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_agent({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_agent name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_agent ::Google::Cloud::Dialogflow::CX::V3::GetAgentRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_agent({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_agent(::Google::Cloud::Dialogflow::CX::V3::GetAgentRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_agent_client_stub.call_count
      end
    end
  end

  def test_create_agent
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::Agent.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    agent = {}

    create_agent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::ServiceStub.stub :transcode_create_agent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_agent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_agent({ parent: parent, agent: agent }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_agent parent: parent, agent: agent do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_agent ::Google::Cloud::Dialogflow::CX::V3::CreateAgentRequest.new(parent: parent, agent: agent) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_agent({ parent: parent, agent: agent }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_agent(::Google::Cloud::Dialogflow::CX::V3::CreateAgentRequest.new(parent: parent, agent: agent), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_agent_client_stub.call_count
      end
    end
  end

  def test_update_agent
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::Agent.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    agent = {}
    update_mask = {}

    update_agent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::ServiceStub.stub :transcode_update_agent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_agent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_agent({ agent: agent, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_agent agent: agent, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_agent ::Google::Cloud::Dialogflow::CX::V3::UpdateAgentRequest.new(agent: agent, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_agent({ agent: agent, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_agent(::Google::Cloud::Dialogflow::CX::V3::UpdateAgentRequest.new(agent: agent, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_agent_client_stub.call_count
      end
    end
  end

  def test_delete_agent
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_agent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::ServiceStub.stub :transcode_delete_agent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_agent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_agent({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_agent name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_agent ::Google::Cloud::Dialogflow::CX::V3::DeleteAgentRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_agent({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_agent(::Google::Cloud::Dialogflow::CX::V3::DeleteAgentRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_agent_client_stub.call_count
      end
    end
  end

  def test_export_agent
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    agent_uri = "hello world"
    data_format = :DATA_FORMAT_UNSPECIFIED
    environment = "hello world"
    git_destination = {}
    include_bigquery_export_settings = true

    export_agent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::ServiceStub.stub :transcode_export_agent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, export_agent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.export_agent({ name: name, agent_uri: agent_uri, data_format: data_format, environment: environment, git_destination: git_destination, include_bigquery_export_settings: include_bigquery_export_settings }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.export_agent name: name, agent_uri: agent_uri, data_format: data_format, environment: environment, git_destination: git_destination, include_bigquery_export_settings: include_bigquery_export_settings do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.export_agent ::Google::Cloud::Dialogflow::CX::V3::ExportAgentRequest.new(name: name, agent_uri: agent_uri, data_format: data_format, environment: environment, git_destination: git_destination, include_bigquery_export_settings: include_bigquery_export_settings) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.export_agent({ name: name, agent_uri: agent_uri, data_format: data_format, environment: environment, git_destination: git_destination, include_bigquery_export_settings: include_bigquery_export_settings }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.export_agent(::Google::Cloud::Dialogflow::CX::V3::ExportAgentRequest.new(name: name, agent_uri: agent_uri, data_format: data_format, environment: environment, git_destination: git_destination, include_bigquery_export_settings: include_bigquery_export_settings), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, export_agent_client_stub.call_count
      end
    end
  end

  def test_restore_agent
    # Create test objects.
    client_result = ::Google::Longrunning::Operation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    agent_uri = "hello world"
    restore_option = :RESTORE_OPTION_UNSPECIFIED

    restore_agent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::ServiceStub.stub :transcode_restore_agent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, restore_agent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.restore_agent({ name: name, agent_uri: agent_uri, restore_option: restore_option }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.restore_agent name: name, agent_uri: agent_uri, restore_option: restore_option do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.restore_agent ::Google::Cloud::Dialogflow::CX::V3::RestoreAgentRequest.new(name: name, agent_uri: agent_uri, restore_option: restore_option) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.restore_agent({ name: name, agent_uri: agent_uri, restore_option: restore_option }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.restore_agent(::Google::Cloud::Dialogflow::CX::V3::RestoreAgentRequest.new(name: name, agent_uri: agent_uri, restore_option: restore_option), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, restore_agent_client_stub.call_count
      end
    end
  end

  def test_validate_agent
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::AgentValidationResult.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    language_code = "hello world"

    validate_agent_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::ServiceStub.stub :transcode_validate_agent_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, validate_agent_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.validate_agent({ name: name, language_code: language_code }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.validate_agent name: name, language_code: language_code do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.validate_agent ::Google::Cloud::Dialogflow::CX::V3::ValidateAgentRequest.new(name: name, language_code: language_code) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.validate_agent({ name: name, language_code: language_code }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.validate_agent(::Google::Cloud::Dialogflow::CX::V3::ValidateAgentRequest.new(name: name, language_code: language_code), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, validate_agent_client_stub.call_count
      end
    end
  end

  def test_get_agent_validation_result
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::AgentValidationResult.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    language_code = "hello world"

    get_agent_validation_result_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::ServiceStub.stub :transcode_get_agent_validation_result_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_agent_validation_result_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_agent_validation_result({ name: name, language_code: language_code }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_agent_validation_result name: name, language_code: language_code do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_agent_validation_result ::Google::Cloud::Dialogflow::CX::V3::GetAgentValidationResultRequest.new(name: name, language_code: language_code) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_agent_validation_result({ name: name, language_code: language_code }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_agent_validation_result(::Google::Cloud::Dialogflow::CX::V3::GetAgentValidationResultRequest.new(name: name, language_code: language_code), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_agent_validation_result_client_stub.call_count
      end
    end
  end

  def test_get_generative_settings
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::GenerativeSettings.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    language_code = "hello world"

    get_generative_settings_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::ServiceStub.stub :transcode_get_generative_settings_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_generative_settings_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_generative_settings({ name: name, language_code: language_code }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_generative_settings name: name, language_code: language_code do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_generative_settings ::Google::Cloud::Dialogflow::CX::V3::GetGenerativeSettingsRequest.new(name: name, language_code: language_code) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_generative_settings({ name: name, language_code: language_code }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_generative_settings(::Google::Cloud::Dialogflow::CX::V3::GetGenerativeSettingsRequest.new(name: name, language_code: language_code), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_generative_settings_client_stub.call_count
      end
    end
  end

  def test_update_generative_settings
    # Create test objects.
    client_result = ::Google::Cloud::Dialogflow::CX::V3::GenerativeSettings.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    generative_settings = {}
    update_mask = {}

    update_generative_settings_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::ServiceStub.stub :transcode_update_generative_settings_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_generative_settings_client_stub do
        # Create client
        client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_generative_settings({ generative_settings: generative_settings, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_generative_settings generative_settings: generative_settings, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_generative_settings ::Google::Cloud::Dialogflow::CX::V3::UpdateGenerativeSettingsRequest.new(generative_settings: generative_settings, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_generative_settings({ generative_settings: generative_settings, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_generative_settings(::Google::Cloud::Dialogflow::CX::V3::UpdateGenerativeSettingsRequest.new(generative_settings: generative_settings, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_generative_settings_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::CX::V3::Agents::Rest::Client::Configuration, config
  end
end

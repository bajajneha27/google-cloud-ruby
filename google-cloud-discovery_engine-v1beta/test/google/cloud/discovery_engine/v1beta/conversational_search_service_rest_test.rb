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
require "google/cloud/discoveryengine/v1beta/conversational_search_service_pb"
require "google/cloud/discovery_engine/v1beta/conversational_search_service/rest"


class ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::ClientTest < Minitest::Test
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

  def test_converse_conversation
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::ConverseConversationResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    query = {}
    serving_config = "hello world"
    conversation = {}
    safe_search = true
    user_labels = {}
    summary_spec = {}
    filter = "hello world"
    boost_spec = {}

    converse_conversation_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::ServiceStub.stub :transcode_converse_conversation_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, converse_conversation_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.converse_conversation({ name: name, query: query, serving_config: serving_config, conversation: conversation, safe_search: safe_search, user_labels: user_labels, summary_spec: summary_spec, filter: filter, boost_spec: boost_spec }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.converse_conversation name: name, query: query, serving_config: serving_config, conversation: conversation, safe_search: safe_search, user_labels: user_labels, summary_spec: summary_spec, filter: filter, boost_spec: boost_spec do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.converse_conversation ::Google::Cloud::DiscoveryEngine::V1beta::ConverseConversationRequest.new(name: name, query: query, serving_config: serving_config, conversation: conversation, safe_search: safe_search, user_labels: user_labels, summary_spec: summary_spec, filter: filter, boost_spec: boost_spec) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.converse_conversation({ name: name, query: query, serving_config: serving_config, conversation: conversation, safe_search: safe_search, user_labels: user_labels, summary_spec: summary_spec, filter: filter, boost_spec: boost_spec }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.converse_conversation(::Google::Cloud::DiscoveryEngine::V1beta::ConverseConversationRequest.new(name: name, query: query, serving_config: serving_config, conversation: conversation, safe_search: safe_search, user_labels: user_labels, summary_spec: summary_spec, filter: filter, boost_spec: boost_spec), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, converse_conversation_client_stub.call_count
      end
    end
  end

  def test_create_conversation
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::Conversation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    conversation = {}

    create_conversation_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::ServiceStub.stub :transcode_create_conversation_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_conversation_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_conversation({ parent: parent, conversation: conversation }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_conversation parent: parent, conversation: conversation do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_conversation ::Google::Cloud::DiscoveryEngine::V1beta::CreateConversationRequest.new(parent: parent, conversation: conversation) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_conversation({ parent: parent, conversation: conversation }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_conversation(::Google::Cloud::DiscoveryEngine::V1beta::CreateConversationRequest.new(parent: parent, conversation: conversation), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_conversation_client_stub.call_count
      end
    end
  end

  def test_delete_conversation
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_conversation_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::ServiceStub.stub :transcode_delete_conversation_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_conversation_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_conversation({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_conversation name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_conversation ::Google::Cloud::DiscoveryEngine::V1beta::DeleteConversationRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_conversation({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_conversation(::Google::Cloud::DiscoveryEngine::V1beta::DeleteConversationRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_conversation_client_stub.call_count
      end
    end
  end

  def test_update_conversation
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::Conversation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    conversation = {}
    update_mask = {}

    update_conversation_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::ServiceStub.stub :transcode_update_conversation_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_conversation_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_conversation({ conversation: conversation, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_conversation conversation: conversation, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_conversation ::Google::Cloud::DiscoveryEngine::V1beta::UpdateConversationRequest.new(conversation: conversation, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_conversation({ conversation: conversation, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_conversation(::Google::Cloud::DiscoveryEngine::V1beta::UpdateConversationRequest.new(conversation: conversation, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_conversation_client_stub.call_count
      end
    end
  end

  def test_get_conversation
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::Conversation.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_conversation_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::ServiceStub.stub :transcode_get_conversation_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_conversation_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_conversation({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_conversation name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_conversation ::Google::Cloud::DiscoveryEngine::V1beta::GetConversationRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_conversation({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_conversation(::Google::Cloud::DiscoveryEngine::V1beta::GetConversationRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_conversation_client_stub.call_count
      end
    end
  end

  def test_list_conversations
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::ListConversationsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_conversations_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::ServiceStub.stub :transcode_list_conversations_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_conversations_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_conversations({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_conversations parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_conversations ::Google::Cloud::DiscoveryEngine::V1beta::ListConversationsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_conversations({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_conversations(::Google::Cloud::DiscoveryEngine::V1beta::ListConversationsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_conversations_client_stub.call_count
      end
    end
  end

  def test_answer_query
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::AnswerQueryResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    serving_config = "hello world"
    query = {}
    session = "hello world"
    safety_spec = {}
    related_questions_spec = {}
    grounding_spec = {}
    answer_generation_spec = {}
    search_spec = {}
    query_understanding_spec = {}
    asynchronous_mode = true
    user_pseudo_id = "hello world"
    user_labels = {}

    answer_query_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::ServiceStub.stub :transcode_answer_query_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, answer_query_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.answer_query({ serving_config: serving_config, query: query, session: session, safety_spec: safety_spec, related_questions_spec: related_questions_spec, grounding_spec: grounding_spec, answer_generation_spec: answer_generation_spec, search_spec: search_spec, query_understanding_spec: query_understanding_spec, asynchronous_mode: asynchronous_mode, user_pseudo_id: user_pseudo_id, user_labels: user_labels }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.answer_query serving_config: serving_config, query: query, session: session, safety_spec: safety_spec, related_questions_spec: related_questions_spec, grounding_spec: grounding_spec, answer_generation_spec: answer_generation_spec, search_spec: search_spec, query_understanding_spec: query_understanding_spec, asynchronous_mode: asynchronous_mode, user_pseudo_id: user_pseudo_id, user_labels: user_labels do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.answer_query ::Google::Cloud::DiscoveryEngine::V1beta::AnswerQueryRequest.new(serving_config: serving_config, query: query, session: session, safety_spec: safety_spec, related_questions_spec: related_questions_spec, grounding_spec: grounding_spec, answer_generation_spec: answer_generation_spec, search_spec: search_spec, query_understanding_spec: query_understanding_spec, asynchronous_mode: asynchronous_mode, user_pseudo_id: user_pseudo_id, user_labels: user_labels) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.answer_query({ serving_config: serving_config, query: query, session: session, safety_spec: safety_spec, related_questions_spec: related_questions_spec, grounding_spec: grounding_spec, answer_generation_spec: answer_generation_spec, search_spec: search_spec, query_understanding_spec: query_understanding_spec, asynchronous_mode: asynchronous_mode, user_pseudo_id: user_pseudo_id, user_labels: user_labels }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.answer_query(::Google::Cloud::DiscoveryEngine::V1beta::AnswerQueryRequest.new(serving_config: serving_config, query: query, session: session, safety_spec: safety_spec, related_questions_spec: related_questions_spec, grounding_spec: grounding_spec, answer_generation_spec: answer_generation_spec, search_spec: search_spec, query_understanding_spec: query_understanding_spec, asynchronous_mode: asynchronous_mode, user_pseudo_id: user_pseudo_id, user_labels: user_labels), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, answer_query_client_stub.call_count
      end
    end
  end

  def test_get_answer
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::Answer.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_answer_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::ServiceStub.stub :transcode_get_answer_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_answer_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_answer({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_answer name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_answer ::Google::Cloud::DiscoveryEngine::V1beta::GetAnswerRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_answer({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_answer(::Google::Cloud::DiscoveryEngine::V1beta::GetAnswerRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_answer_client_stub.call_count
      end
    end
  end

  def test_create_session
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::Session.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    session = {}

    create_session_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::ServiceStub.stub :transcode_create_session_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, create_session_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.create_session({ parent: parent, session: session }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.create_session parent: parent, session: session do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.create_session ::Google::Cloud::DiscoveryEngine::V1beta::CreateSessionRequest.new(parent: parent, session: session) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.create_session({ parent: parent, session: session }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.create_session(::Google::Cloud::DiscoveryEngine::V1beta::CreateSessionRequest.new(parent: parent, session: session), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, create_session_client_stub.call_count
      end
    end
  end

  def test_delete_session
    # Create test objects.
    client_result = ::Google::Protobuf::Empty.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_session_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::ServiceStub.stub :transcode_delete_session_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, delete_session_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.delete_session({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.delete_session name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.delete_session ::Google::Cloud::DiscoveryEngine::V1beta::DeleteSessionRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.delete_session({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.delete_session(::Google::Cloud::DiscoveryEngine::V1beta::DeleteSessionRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, delete_session_client_stub.call_count
      end
    end
  end

  def test_update_session
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::Session.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    session = {}
    update_mask = {}

    update_session_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::ServiceStub.stub :transcode_update_session_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, update_session_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.update_session({ session: session, update_mask: update_mask }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.update_session session: session, update_mask: update_mask do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.update_session ::Google::Cloud::DiscoveryEngine::V1beta::UpdateSessionRequest.new(session: session, update_mask: update_mask) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.update_session({ session: session, update_mask: update_mask }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.update_session(::Google::Cloud::DiscoveryEngine::V1beta::UpdateSessionRequest.new(session: session, update_mask: update_mask), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, update_session_client_stub.call_count
      end
    end
  end

  def test_get_session
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::Session.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_session_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::ServiceStub.stub :transcode_get_session_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, get_session_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.get_session({ name: name }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.get_session name: name do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.get_session ::Google::Cloud::DiscoveryEngine::V1beta::GetSessionRequest.new(name: name) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.get_session({ name: name }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.get_session(::Google::Cloud::DiscoveryEngine::V1beta::GetSessionRequest.new(name: name), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, get_session_client_stub.call_count
      end
    end
  end

  def test_list_sessions
    # Create test objects.
    client_result = ::Google::Cloud::DiscoveryEngine::V1beta::ListSessionsResponse.new
    http_response = OpenStruct.new body: client_result.to_json

    call_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"
    order_by = "hello world"

    list_sessions_client_stub = ClientStub.new http_response do |_verb, uri:, body:, params:, options:, method_name:|
      assert options.metadata.key? :"x-goog-api-client"
      assert options.metadata[:"x-goog-api-client"].include? "rest"
      refute options.metadata[:"x-goog-api-client"].include? "grpc"
    end

    ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::ServiceStub.stub :transcode_list_sessions_request, ["", "", {}] do
      Gapic::Rest::ClientStub.stub :new, list_sessions_client_stub do
        # Create client
        client = ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client.new do |config|
          config.credentials = :dummy_value
        end

        # Use hash object
        client.list_sessions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use named arguments
        client.list_sessions parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object
        client.list_sessions ::Google::Cloud::DiscoveryEngine::V1beta::ListSessionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use hash object with options
        client.list_sessions({ parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by }, call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Use protobuf object with options
        client.list_sessions(::Google::Cloud::DiscoveryEngine::V1beta::ListSessionsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter, order_by: order_by), call_options) do |_result, response|
          assert_equal http_response, response.underlying_op
        end

        # Verify method calls
        assert_equal 5, list_sessions_client_stub.call_count
      end
    end
  end

  def test_configure
    credentials_token = :dummy_value

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil
    Gapic::Rest::ClientStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client.new do |config|
        config.credentials = credentials_token
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1beta::ConversationalSearchService::Rest::Client::Configuration, config
  end
end

# frozen_string_literal: true

# Copyright 2021 Google LLC
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

require "gapic/grpc/service_stub"

require "google/cloud/dialogflow/v2/conversation_pb"
require "google/cloud/dialogflow/v2/conversation_services_pb"
require "google/cloud/dialogflow/v2/conversations"

class ::Google::Cloud::Dialogflow::V2::Conversations::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      catch :response do
        yield @response, @operation if block_given?
        @response
      end
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

  def test_create_conversation
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::Conversation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    conversation = {}
    conversation_id = "hello world"

    create_conversation_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_conversation, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::CreateConversationRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::Conversation), request["conversation"]
      assert_equal "hello world", request["conversation_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_conversation_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_conversation({ parent: parent, conversation: conversation, conversation_id: conversation_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_conversation parent: parent, conversation: conversation, conversation_id: conversation_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_conversation ::Google::Cloud::Dialogflow::V2::CreateConversationRequest.new(parent: parent, conversation: conversation, conversation_id: conversation_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_conversation({ parent: parent, conversation: conversation, conversation_id: conversation_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_conversation(::Google::Cloud::Dialogflow::V2::CreateConversationRequest.new(parent: parent, conversation: conversation, conversation_id: conversation_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_conversation_client_stub.call_rpc_count
    end
  end

  def test_list_conversations
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::ListConversationsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_conversations_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_conversations, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::ListConversationsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_conversations_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_conversations({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_conversations parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_conversations ::Google::Cloud::Dialogflow::V2::ListConversationsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_conversations({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_conversations(::Google::Cloud::Dialogflow::V2::ListConversationsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_conversations_client_stub.call_rpc_count
    end
  end

  def test_get_conversation
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::Conversation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_conversation_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_conversation, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::GetConversationRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_conversation_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_conversation({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_conversation name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_conversation ::Google::Cloud::Dialogflow::V2::GetConversationRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_conversation({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_conversation(::Google::Cloud::Dialogflow::V2::GetConversationRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_conversation_client_stub.call_rpc_count
    end
  end

  def test_complete_conversation
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::Conversation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    complete_conversation_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :complete_conversation, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::CompleteConversationRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, complete_conversation_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.complete_conversation({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.complete_conversation name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.complete_conversation ::Google::Cloud::Dialogflow::V2::CompleteConversationRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.complete_conversation({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.complete_conversation(::Google::Cloud::Dialogflow::V2::CompleteConversationRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, complete_conversation_client_stub.call_rpc_count
    end
  end

  def test_list_messages
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::ListMessagesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    filter = "hello world"
    page_size = 42
    page_token = "hello world"

    list_messages_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_messages, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::ListMessagesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["filter"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_messages_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_messages({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_messages parent: parent, filter: filter, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_messages ::Google::Cloud::Dialogflow::V2::ListMessagesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_messages({ parent: parent, filter: filter, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_messages(::Google::Cloud::Dialogflow::V2::ListMessagesRequest.new(parent: parent, filter: filter, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_messages_client_stub.call_rpc_count
    end
  end

  def test_suggest_conversation_summary
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::SuggestConversationSummaryResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    conversation = "hello world"
    latest_message = "hello world"
    context_size = 42
    assist_query_params = {}

    suggest_conversation_summary_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :suggest_conversation_summary, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::SuggestConversationSummaryRequest, request
      assert_equal "hello world", request["conversation"]
      assert_equal "hello world", request["latest_message"]
      assert_equal 42, request["context_size"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::AssistQueryParameters), request["assist_query_params"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, suggest_conversation_summary_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.suggest_conversation_summary({ conversation: conversation, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.suggest_conversation_summary conversation: conversation, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.suggest_conversation_summary ::Google::Cloud::Dialogflow::V2::SuggestConversationSummaryRequest.new(conversation: conversation, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.suggest_conversation_summary({ conversation: conversation, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.suggest_conversation_summary(::Google::Cloud::Dialogflow::V2::SuggestConversationSummaryRequest.new(conversation: conversation, latest_message: latest_message, context_size: context_size, assist_query_params: assist_query_params), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, suggest_conversation_summary_client_stub.call_rpc_count
    end
  end

  def test_generate_stateless_summary
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::GenerateStatelessSummaryResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    stateless_conversation = {}
    conversation_profile = {}
    latest_message = "hello world"
    max_context_size = 42

    generate_stateless_summary_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :generate_stateless_summary, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::GenerateStatelessSummaryRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::GenerateStatelessSummaryRequest::MinimalConversation), request["stateless_conversation"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::ConversationProfile), request["conversation_profile"]
      assert_equal "hello world", request["latest_message"]
      assert_equal 42, request["max_context_size"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, generate_stateless_summary_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.generate_stateless_summary({ stateless_conversation: stateless_conversation, conversation_profile: conversation_profile, latest_message: latest_message, max_context_size: max_context_size }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.generate_stateless_summary stateless_conversation: stateless_conversation, conversation_profile: conversation_profile, latest_message: latest_message, max_context_size: max_context_size do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.generate_stateless_summary ::Google::Cloud::Dialogflow::V2::GenerateStatelessSummaryRequest.new(stateless_conversation: stateless_conversation, conversation_profile: conversation_profile, latest_message: latest_message, max_context_size: max_context_size) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.generate_stateless_summary({ stateless_conversation: stateless_conversation, conversation_profile: conversation_profile, latest_message: latest_message, max_context_size: max_context_size }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.generate_stateless_summary(::Google::Cloud::Dialogflow::V2::GenerateStatelessSummaryRequest.new(stateless_conversation: stateless_conversation, conversation_profile: conversation_profile, latest_message: latest_message, max_context_size: max_context_size), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, generate_stateless_summary_client_stub.call_rpc_count
    end
  end

  def test_generate_stateless_suggestion
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::GenerateStatelessSuggestionResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    generator = {}
    conversation_context = {}
    trigger_events = [:TRIGGER_EVENT_UNSPECIFIED]

    generate_stateless_suggestion_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :generate_stateless_suggestion, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::GenerateStatelessSuggestionRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::Generator), request["generator"]
      assert_equal :generator, request.generator_resource
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::ConversationContext), request["conversation_context"]
      assert_equal [:TRIGGER_EVENT_UNSPECIFIED], request["trigger_events"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, generate_stateless_suggestion_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.generate_stateless_suggestion({ parent: parent, generator: generator, conversation_context: conversation_context, trigger_events: trigger_events }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.generate_stateless_suggestion parent: parent, generator: generator, conversation_context: conversation_context, trigger_events: trigger_events do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.generate_stateless_suggestion ::Google::Cloud::Dialogflow::V2::GenerateStatelessSuggestionRequest.new(parent: parent, generator: generator, conversation_context: conversation_context, trigger_events: trigger_events) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.generate_stateless_suggestion({ parent: parent, generator: generator, conversation_context: conversation_context, trigger_events: trigger_events }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.generate_stateless_suggestion(::Google::Cloud::Dialogflow::V2::GenerateStatelessSuggestionRequest.new(parent: parent, generator: generator, conversation_context: conversation_context, trigger_events: trigger_events), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, generate_stateless_suggestion_client_stub.call_rpc_count
    end
  end

  def test_search_knowledge
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::Dialogflow::V2::SearchKnowledgeResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    query = {}
    conversation_profile = "hello world"
    session_id = "hello world"
    conversation = "hello world"
    latest_message = "hello world"
    query_source = :QUERY_SOURCE_UNSPECIFIED
    end_user_metadata = {}
    search_config = {}
    exact_search = true

    search_knowledge_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :search_knowledge, name
      assert_kind_of ::Google::Cloud::Dialogflow::V2::SearchKnowledgeRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::TextInput), request["query"]
      assert_equal "hello world", request["conversation_profile"]
      assert_equal "hello world", request["session_id"]
      assert_equal "hello world", request["conversation"]
      assert_equal "hello world", request["latest_message"]
      assert_equal :QUERY_SOURCE_UNSPECIFIED, request["query_source"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::Struct), request["end_user_metadata"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::Dialogflow::V2::SearchKnowledgeRequest::SearchConfig), request["search_config"]
      assert_equal true, request["exact_search"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, search_knowledge_client_stub do
      # Create client
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.search_knowledge({ parent: parent, query: query, conversation_profile: conversation_profile, session_id: session_id, conversation: conversation, latest_message: latest_message, query_source: query_source, end_user_metadata: end_user_metadata, search_config: search_config, exact_search: exact_search }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.search_knowledge parent: parent, query: query, conversation_profile: conversation_profile, session_id: session_id, conversation: conversation, latest_message: latest_message, query_source: query_source, end_user_metadata: end_user_metadata, search_config: search_config, exact_search: exact_search do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.search_knowledge ::Google::Cloud::Dialogflow::V2::SearchKnowledgeRequest.new(parent: parent, query: query, conversation_profile: conversation_profile, session_id: session_id, conversation: conversation, latest_message: latest_message, query_source: query_source, end_user_metadata: end_user_metadata, search_config: search_config, exact_search: exact_search) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.search_knowledge({ parent: parent, query: query, conversation_profile: conversation_profile, session_id: session_id, conversation: conversation, latest_message: latest_message, query_source: query_source, end_user_metadata: end_user_metadata, search_config: search_config, exact_search: exact_search }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.search_knowledge(::Google::Cloud::Dialogflow::V2::SearchKnowledgeRequest.new(parent: parent, query: query, conversation_profile: conversation_profile, session_id: session_id, conversation: conversation, latest_message: latest_message, query_source: query_source, end_user_metadata: end_user_metadata, search_config: search_config, exact_search: exact_search), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, search_knowledge_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::Dialogflow::V2::Conversations::Client::Configuration, config
  end
end

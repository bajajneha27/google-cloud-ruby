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

require "google/cloud/dialogflow/v2/conversations"

class ::Google::Cloud::Dialogflow::V2::Conversations::ClientPathsTest < Minitest::Test
  class DummyStub
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

  def test_agent_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.agent_path project: "value0"
      assert_equal "projects/value0/agent", path

      path = client.agent_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1/agent", path
    end
  end

  def test_cx_security_settings_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.cx_security_settings_path project: "value0", location: "value1", security_settings: "value2"
      assert_equal "projects/value0/locations/value1/securitySettings/value2", path
    end
  end

  def test_conversation_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.conversation_path project: "value0", conversation: "value1"
      assert_equal "projects/value0/conversations/value1", path

      path = client.conversation_path project: "value0", location: "value1", conversation: "value2"
      assert_equal "projects/value0/locations/value1/conversations/value2", path
    end
  end

  def test_conversation_model_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.conversation_model_path project: "value0", location: "value1", conversation_model: "value2"
      assert_equal "projects/value0/locations/value1/conversationModels/value2", path

      path = client.conversation_model_path project: "value0", conversation_model: "value1"
      assert_equal "projects/value0/conversationModels/value1", path
    end
  end

  def test_conversation_profile_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.conversation_profile_path project: "value0", conversation_profile: "value1"
      assert_equal "projects/value0/conversationProfiles/value1", path

      path = client.conversation_profile_path project: "value0", location: "value1", conversation_profile: "value2"
      assert_equal "projects/value0/locations/value1/conversationProfiles/value2", path
    end
  end

  def test_data_store_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.data_store_path project: "value0", location: "value1", collection: "value2", data_store: "value3"
      assert_equal "projects/value0/locations/value1/collections/value2/dataStores/value3", path

      path = client.data_store_path project: "value0", location: "value1", data_store: "value2"
      assert_equal "projects/value0/locations/value1/dataStores/value2", path
    end
  end

  def test_document_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.document_path project: "value0", knowledge_base: "value1", document: "value2"
      assert_equal "projects/value0/knowledgeBases/value1/documents/value2", path

      path = client.document_path project: "value0", location: "value1", knowledge_base: "value2", document: "value3"
      assert_equal "projects/value0/locations/value1/knowledgeBases/value2/documents/value3", path
    end
  end

  def test_generator_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.generator_path project: "value0", location: "value1", generator: "value2"
      assert_equal "projects/value0/locations/value1/generators/value2", path
    end
  end

  def test_knowledge_base_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.knowledge_base_path project: "value0", knowledge_base: "value1"
      assert_equal "projects/value0/knowledgeBases/value1", path

      path = client.knowledge_base_path project: "value0", location: "value1", knowledge_base: "value2"
      assert_equal "projects/value0/locations/value1/knowledgeBases/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_message_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.message_path project: "value0", conversation: "value1", message: "value2"
      assert_equal "projects/value0/conversations/value1/messages/value2", path

      path = client.message_path project: "value0", location: "value1", conversation: "value2", message: "value3"
      assert_equal "projects/value0/locations/value1/conversations/value2/messages/value3", path
    end
  end

  def test_phrase_set_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.phrase_set_path project: "value0", location: "value1", phrase_set: "value2"
      assert_equal "projects/value0/locations/value1/phraseSets/value2", path
    end
  end

  def test_project_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Dialogflow::V2::Conversations::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.project_path project: "value0"
      assert_equal "projects/value0", path
    end
  end
end

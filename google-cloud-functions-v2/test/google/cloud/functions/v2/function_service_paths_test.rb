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

require "gapic/grpc/service_stub"

require "google/cloud/functions/v2/function_service"

class ::Google::Cloud::Functions::V2::FunctionService::ClientPathsTest < Minitest::Test
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

  def test_build_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Functions::V2::FunctionService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.build_path project: "value0", location: "value1", build: "value2"
      assert_equal "projects/value0/locations/value1/builds/value2", path
    end
  end

  def test_channel_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Functions::V2::FunctionService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.channel_path project: "value0", location: "value1", channel: "value2"
      assert_equal "projects/value0/locations/value1/channels/value2", path
    end
  end

  def test_connector_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Functions::V2::FunctionService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.connector_path project: "value0", location: "value1", connector: "value2"
      assert_equal "projects/value0/locations/value1/connectors/value2", path
    end
  end

  def test_crypto_key_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Functions::V2::FunctionService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.crypto_key_path project: "value0", location: "value1", key_ring: "value2", crypto_key: "value3"
      assert_equal "projects/value0/locations/value1/keyRings/value2/cryptoKeys/value3", path
    end
  end

  def test_function_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Functions::V2::FunctionService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.function_path project: "value0", location: "value1", function: "value2"
      assert_equal "projects/value0/locations/value1/functions/value2", path
    end
  end

  def test_location_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Functions::V2::FunctionService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.location_path project: "value0", location: "value1"
      assert_equal "projects/value0/locations/value1", path
    end
  end

  def test_repository_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Functions::V2::FunctionService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.repository_path project: "value0", location: "value1", repository: "value2"
      assert_equal "projects/value0/locations/value1/repositories/value2", path
    end
  end

  def test_service_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Functions::V2::FunctionService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.service_path project: "value0", location: "value1", service: "value2"
      assert_equal "projects/value0/locations/value1/services/value2", path
    end
  end

  def test_topic_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Functions::V2::FunctionService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.topic_path project: "value0", topic: "value1"
      assert_equal "projects/value0/topics/value1", path
    end
  end

  def test_trigger_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Functions::V2::FunctionService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.trigger_path project: "value0", location: "value1", trigger: "value2"
      assert_equal "projects/value0/locations/value1/triggers/value2", path
    end
  end

  def test_worker_pool_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::Functions::V2::FunctionService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.worker_pool_path project: "value0", location: "value1", worker_pool: "value2"
      assert_equal "projects/value0/locations/value1/workerPools/value2", path
    end
  end
end

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

require "gapic/grpc/service_stub"

require "google/cloud/discovery_engine/v1beta/serving_config_service"

class ::Google::Cloud::DiscoveryEngine::V1beta::ServingConfigService::ClientPathsTest < Minitest::Test
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

  def test_data_store_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::ServingConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.data_store_path project: "value0", location: "value1", data_store: "value2"
      assert_equal "projects/value0/locations/value1/dataStores/value2", path

      path = client.data_store_path project: "value0", location: "value1", collection: "value2", data_store: "value3"
      assert_equal "projects/value0/locations/value1/collections/value2/dataStores/value3", path
    end
  end

  def test_engine_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::ServingConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.engine_path project: "value0", location: "value1", collection: "value2", engine: "value3"
      assert_equal "projects/value0/locations/value1/collections/value2/engines/value3", path
    end
  end

  def test_serving_config_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, DummyStub.new do
      client = ::Google::Cloud::DiscoveryEngine::V1beta::ServingConfigService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.serving_config_path project: "value0", location: "value1", data_store: "value2", serving_config: "value3"
      assert_equal "projects/value0/locations/value1/dataStores/value2/servingConfigs/value3", path

      path = client.serving_config_path project: "value0", location: "value1", collection: "value2", data_store: "value3", serving_config: "value4"
      assert_equal "projects/value0/locations/value1/collections/value2/dataStores/value3/servingConfigs/value4", path

      path = client.serving_config_path project: "value0", location: "value1", collection: "value2", engine: "value3", serving_config: "value4"
      assert_equal "projects/value0/locations/value1/collections/value2/engines/value3/servingConfigs/value4", path
    end
  end
end

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

require "gapic/grpc/service_stub"

require "google/cloud/ai_platform/v1/feature_online_store_service"

class ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::ClientPathsTest < Minitest::Test
  def test_feature_view_path
    grpc_channel = ::GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    ::Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::AIPlatform::V1::FeatureOnlineStoreService::Client.new do |config|
        config.credentials = grpc_channel
      end

      path = client.feature_view_path project: "value0", location: "value1", feature_online_store: "value2", feature_view: "value3"
      assert_equal "projects/value0/locations/value1/featureOnlineStores/value2/featureViews/value3", path
    end
  end
end
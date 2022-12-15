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

require "google/cloud/ai_platform/v1/dataset_service"
require "google/cloud/ai_platform/v1/endpoint_service"
require "google/cloud/ai_platform/v1/featurestore_online_serving_service"
require "google/cloud/ai_platform/v1/featurestore_service"
require "google/cloud/ai_platform/v1/index_endpoint_service"
require "google/cloud/ai_platform/v1/index_service"
require "google/cloud/ai_platform/v1/job_service"
require "google/cloud/ai_platform/v1/metadata_service"
require "google/cloud/ai_platform/v1/migration_service"
require "google/cloud/ai_platform/v1/model_service"
require "google/cloud/ai_platform/v1/pipeline_service"
require "google/cloud/ai_platform/v1/prediction_service"
require "google/cloud/ai_platform/v1/specialist_pool_service"
require "google/cloud/ai_platform/v1/tensorboard_service"
require "google/cloud/ai_platform/v1/vizier_service"
require "google/cloud/ai_platform/v1/version"

module Google
  module Cloud
    module AIPlatform
      ##
      # API client module.
      #
      # @example Load this package, including all its services, and instantiate a gRPC client
      #
      #     require "google/cloud/ai_platform/v1"
      #     client = ::Google::Cloud::AIPlatform::V1::DatasetService::Client.new
      #
      module V1
      end
    end
  end
end

helper_path = ::File.join __dir__, "v1", "_helpers.rb"
require "google/cloud/ai_platform/v1/_helpers" if ::File.file? helper_path

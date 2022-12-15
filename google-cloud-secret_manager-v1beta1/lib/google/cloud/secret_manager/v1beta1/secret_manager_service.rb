# frozen_string_literal: true

# Copyright 2020 Google LLC
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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/secret_manager/v1beta1/version"

require "google/cloud/secret_manager/v1beta1/secret_manager_service/credentials"
require "google/cloud/secret_manager/v1beta1/secret_manager_service/paths"
require "google/cloud/secret_manager/v1beta1/secret_manager_service/client"

module Google
  module Cloud
    module SecretManager
      module V1beta1
        ##
        # Secret Manager Service
        #
        # Manages secrets and operations using those secrets. Implements a REST
        # model with the following objects:
        #
        # * {::Google::Cloud::SecretManager::V1beta1::Secret Secret}
        # * {::Google::Cloud::SecretManager::V1beta1::SecretVersion SecretVersion}
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/secret_manager/v1beta1/secret_manager_service"
        #     client = ::Google::Cloud::SecretManager::V1beta1::SecretManagerService::Client.new
        #
        module SecretManagerService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "secret_manager_service", "helpers.rb"
require "google/cloud/secret_manager/v1beta1/secret_manager_service/helpers" if ::File.file? helper_path

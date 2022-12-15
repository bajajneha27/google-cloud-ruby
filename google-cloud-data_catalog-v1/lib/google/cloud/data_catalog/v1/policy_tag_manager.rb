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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/data_catalog/v1/version"

require "google/cloud/data_catalog/v1/policy_tag_manager/credentials"
require "google/cloud/data_catalog/v1/policy_tag_manager/paths"
require "google/cloud/data_catalog/v1/policy_tag_manager/client"

module Google
  module Cloud
    module DataCatalog
      module V1
        ##
        # Policy Tag Manager API service allows you to manage your policy tags and
        # taxonomies.
        #
        # Policy tags are used to tag BigQuery columns and apply additional access
        # control policies. A taxonomy is a hierarchical grouping of policy tags that
        # classify data along a common axis.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/data_catalog/v1/policy_tag_manager"
        #     client = ::Google::Cloud::DataCatalog::V1::PolicyTagManager::Client.new
        #
        module PolicyTagManager
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "policy_tag_manager", "helpers.rb"
require "google/cloud/data_catalog/v1/policy_tag_manager/helpers" if ::File.file? helper_path

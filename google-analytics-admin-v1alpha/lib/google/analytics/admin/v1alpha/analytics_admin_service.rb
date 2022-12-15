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

require "google/analytics/admin/v1alpha/version"

require "google/analytics/admin/v1alpha/analytics_admin_service/credentials"
require "google/analytics/admin/v1alpha/analytics_admin_service/paths"
require "google/analytics/admin/v1alpha/analytics_admin_service/client"

module Google
  module Analytics
    module Admin
      module V1alpha
        ##
        # Service Interface for the Analytics Admin API (GA4).
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/analytics/admin/v1alpha/analytics_admin_service"
        #     client = ::Google::Analytics::Admin::V1alpha::AnalyticsAdminService::Client.new
        #
        module AnalyticsAdminService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "analytics_admin_service", "helpers.rb"
require "google/analytics/admin/v1alpha/analytics_admin_service/helpers" if ::File.file? helper_path

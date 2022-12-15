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

require "google/cloud/os_login/v1beta/version"

require "google/cloud/os_login/v1beta/os_login_service/credentials"
require "google/cloud/os_login/v1beta/os_login_service/paths"
require "google/cloud/os_login/v1beta/os_login_service/client"

module Google
  module Cloud
    module OsLogin
      module V1beta
        ##
        # Cloud OS Login API
        #
        # The Cloud OS Login API allows you to manage users and their associated SSH
        # public keys for logging into virtual machines on Google Cloud Platform.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/os_login/v1beta/os_login_service"
        #     client = ::Google::Cloud::OsLogin::V1beta::OsLoginService::Client.new
        #
        module OsLoginService
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "os_login_service", "helpers.rb"
require "google/cloud/os_login/v1beta/os_login_service/helpers" if ::File.file? helper_path

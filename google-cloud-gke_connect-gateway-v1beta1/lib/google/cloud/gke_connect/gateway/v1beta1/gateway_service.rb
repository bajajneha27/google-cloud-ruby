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

require "google/cloud/gke_connect/gateway/v1beta1/version"

require "google/cloud/gke_connect/gateway/v1beta1/gateway_service/credentials"
require "google/cloud/gke_connect/gateway/v1beta1/gateway_service/client"

module Google
  module Cloud
    module GkeConnect
      module Gateway
        module V1beta1
          ##
          # Gateway service is a public API which works as a Kubernetes resource model
          # proxy between end users and registered Kubernetes clusters. Each RPC in this
          # service matches with an HTTP verb. End user will initiate kubectl commands
          # against the Gateway service, and Gateway service will forward user requests
          # to clusters.
          #
          # @example Load this service and instantiate a gRPC client
          #
          #     require "google/cloud/gke_connect/gateway/v1beta1/gateway_service"
          #     client = ::Google::Cloud::GkeConnect::Gateway::V1beta1::GatewayService::Client.new
          #
          module GatewayService
          end
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "gateway_service", "helpers.rb"
require "google/cloud/gke_connect/gateway/v1beta1/gateway_service/helpers" if ::File.file? helper_path

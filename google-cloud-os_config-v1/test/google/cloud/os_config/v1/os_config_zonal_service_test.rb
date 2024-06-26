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

require "google/cloud/osconfig/v1/osconfig_zonal_service_pb"
require "google/cloud/osconfig/v1/osconfig_zonal_service_services_pb"
require "google/cloud/os_config/v1/os_config_zonal_service"

class ::Google::Cloud::OsConfig::V1::OsConfigZonalService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_get_inventory
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::Inventory.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    view = :INVENTORY_VIEW_UNSPECIFIED

    get_inventory_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_inventory, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::GetInventoryRequest, request
      assert_equal "hello world", request["name"]
      assert_equal :INVENTORY_VIEW_UNSPECIFIED, request["view"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_inventory_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_inventory({ name: name, view: view }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_inventory name: name, view: view do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_inventory ::Google::Cloud::OsConfig::V1::GetInventoryRequest.new(name: name, view: view) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_inventory({ name: name, view: view }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_inventory(::Google::Cloud::OsConfig::V1::GetInventoryRequest.new(name: name, view: view), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_inventory_client_stub.call_rpc_count
    end
  end

  def test_list_inventories
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::ListInventoriesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    view = :INVENTORY_VIEW_UNSPECIFIED
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_inventories_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_inventories, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::ListInventoriesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal :INVENTORY_VIEW_UNSPECIFIED, request["view"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_inventories_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_inventories({ parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_inventories parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_inventories ::Google::Cloud::OsConfig::V1::ListInventoriesRequest.new(parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_inventories({ parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_inventories(::Google::Cloud::OsConfig::V1::ListInventoriesRequest.new(parent: parent, view: view, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_inventories_client_stub.call_rpc_count
    end
  end

  def test_get_vulnerability_report
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::VulnerabilityReport.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_vulnerability_report_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_vulnerability_report, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::GetVulnerabilityReportRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_vulnerability_report_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_vulnerability_report({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_vulnerability_report name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_vulnerability_report ::Google::Cloud::OsConfig::V1::GetVulnerabilityReportRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_vulnerability_report({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_vulnerability_report(::Google::Cloud::OsConfig::V1::GetVulnerabilityReportRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_vulnerability_report_client_stub.call_rpc_count
    end
  end

  def test_list_vulnerability_reports
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::OsConfig::V1::ListVulnerabilityReportsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_vulnerability_reports_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_vulnerability_reports, name
      assert_kind_of ::Google::Cloud::OsConfig::V1::ListVulnerabilityReportsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_vulnerability_reports_client_stub do
      # Create client
      client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_vulnerability_reports({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_vulnerability_reports parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_vulnerability_reports ::Google::Cloud::OsConfig::V1::ListVulnerabilityReportsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_vulnerability_reports({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_vulnerability_reports(::Google::Cloud::OsConfig::V1::ListVulnerabilityReportsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_vulnerability_reports_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::OsConfig::V1::OsConfigZonalService::Client::Configuration, config
  end
end

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

require "google/cloud/discoveryengine/v1/site_search_engine_service_pb"
require "google/cloud/discoveryengine/v1/site_search_engine_service_services_pb"
require "google/cloud/discovery_engine/v1/site_search_engine_service"

class ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::ClientTest < Minitest::Test
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

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end
  end

  def test_get_site_search_engine
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngine.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_site_search_engine_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_site_search_engine, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::GetSiteSearchEngineRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_site_search_engine_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_site_search_engine({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_site_search_engine name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_site_search_engine ::Google::Cloud::DiscoveryEngine::V1::GetSiteSearchEngineRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_site_search_engine({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_site_search_engine(::Google::Cloud::DiscoveryEngine::V1::GetSiteSearchEngineRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_site_search_engine_client_stub.call_rpc_count
    end
  end

  def test_create_target_site
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    target_site = {}

    create_target_site_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_target_site, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::CreateTargetSiteRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1::TargetSite), request["target_site"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_target_site_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_target_site({ parent: parent, target_site: target_site }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_target_site parent: parent, target_site: target_site do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_target_site ::Google::Cloud::DiscoveryEngine::V1::CreateTargetSiteRequest.new(parent: parent, target_site: target_site) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_target_site({ parent: parent, target_site: target_site }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_target_site(::Google::Cloud::DiscoveryEngine::V1::CreateTargetSiteRequest.new(parent: parent, target_site: target_site), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_target_site_client_stub.call_rpc_count
    end
  end

  def test_batch_create_target_sites
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    requests = [{}]

    batch_create_target_sites_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_create_target_sites, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::BatchCreateTargetSitesRequest, request
      assert_equal "hello world", request["parent"]
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::CreateTargetSiteRequest, request["requests"].first
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_create_target_sites_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_create_target_sites({ parent: parent, requests: requests }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_create_target_sites parent: parent, requests: requests do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_create_target_sites ::Google::Cloud::DiscoveryEngine::V1::BatchCreateTargetSitesRequest.new(parent: parent, requests: requests) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_create_target_sites({ parent: parent, requests: requests }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_create_target_sites(::Google::Cloud::DiscoveryEngine::V1::BatchCreateTargetSitesRequest.new(parent: parent, requests: requests), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_create_target_sites_client_stub.call_rpc_count
    end
  end

  def test_get_target_site
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1::TargetSite.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_target_site_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_target_site, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::GetTargetSiteRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_target_site_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_target_site({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_target_site name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_target_site ::Google::Cloud::DiscoveryEngine::V1::GetTargetSiteRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_target_site({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_target_site(::Google::Cloud::DiscoveryEngine::V1::GetTargetSiteRequest.new(name: name), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_target_site_client_stub.call_rpc_count
    end
  end

  def test_update_target_site
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    target_site = {}

    update_target_site_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_target_site, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::UpdateTargetSiteRequest, request
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::DiscoveryEngine::V1::TargetSite), request["target_site"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_target_site_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_target_site({ target_site: target_site }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_target_site target_site: target_site do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_target_site ::Google::Cloud::DiscoveryEngine::V1::UpdateTargetSiteRequest.new(target_site: target_site) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_target_site({ target_site: target_site }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_target_site(::Google::Cloud::DiscoveryEngine::V1::UpdateTargetSiteRequest.new(target_site: target_site), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_target_site_client_stub.call_rpc_count
    end
  end

  def test_delete_target_site
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_target_site_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_target_site, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::DeleteTargetSiteRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_target_site_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_target_site({ name: name }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_target_site name: name do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_target_site ::Google::Cloud::DiscoveryEngine::V1::DeleteTargetSiteRequest.new(name: name) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_target_site({ name: name }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_target_site(::Google::Cloud::DiscoveryEngine::V1::DeleteTargetSiteRequest.new(name: name), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_target_site_client_stub.call_rpc_count
    end
  end

  def test_list_target_sites
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1::ListTargetSitesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_target_sites_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_target_sites, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::ListTargetSitesRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_target_sites_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_target_sites({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_target_sites parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_target_sites ::Google::Cloud::DiscoveryEngine::V1::ListTargetSitesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_target_sites({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_target_sites(::Google::Cloud::DiscoveryEngine::V1::ListTargetSitesRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_target_sites_client_stub.call_rpc_count
    end
  end

  def test_enable_advanced_site_search
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    site_search_engine = "hello world"

    enable_advanced_site_search_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :enable_advanced_site_search, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::EnableAdvancedSiteSearchRequest, request
      assert_equal "hello world", request["site_search_engine"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, enable_advanced_site_search_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.enable_advanced_site_search({ site_search_engine: site_search_engine }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.enable_advanced_site_search site_search_engine: site_search_engine do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.enable_advanced_site_search ::Google::Cloud::DiscoveryEngine::V1::EnableAdvancedSiteSearchRequest.new(site_search_engine: site_search_engine) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.enable_advanced_site_search({ site_search_engine: site_search_engine }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.enable_advanced_site_search(::Google::Cloud::DiscoveryEngine::V1::EnableAdvancedSiteSearchRequest.new(site_search_engine: site_search_engine), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, enable_advanced_site_search_client_stub.call_rpc_count
    end
  end

  def test_disable_advanced_site_search
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    site_search_engine = "hello world"

    disable_advanced_site_search_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :disable_advanced_site_search, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::DisableAdvancedSiteSearchRequest, request
      assert_equal "hello world", request["site_search_engine"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, disable_advanced_site_search_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.disable_advanced_site_search({ site_search_engine: site_search_engine }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.disable_advanced_site_search site_search_engine: site_search_engine do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.disable_advanced_site_search ::Google::Cloud::DiscoveryEngine::V1::DisableAdvancedSiteSearchRequest.new(site_search_engine: site_search_engine) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.disable_advanced_site_search({ site_search_engine: site_search_engine }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.disable_advanced_site_search(::Google::Cloud::DiscoveryEngine::V1::DisableAdvancedSiteSearchRequest.new(site_search_engine: site_search_engine), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, disable_advanced_site_search_client_stub.call_rpc_count
    end
  end

  def test_recrawl_uris
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    site_search_engine = "hello world"
    uris = ["hello world"]
    site_credential = "hello world"

    recrawl_uris_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :recrawl_uris, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::RecrawlUrisRequest, request
      assert_equal "hello world", request["site_search_engine"]
      assert_equal ["hello world"], request["uris"]
      assert_equal "hello world", request["site_credential"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, recrawl_uris_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.recrawl_uris({ site_search_engine: site_search_engine, uris: uris, site_credential: site_credential }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.recrawl_uris site_search_engine: site_search_engine, uris: uris, site_credential: site_credential do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.recrawl_uris ::Google::Cloud::DiscoveryEngine::V1::RecrawlUrisRequest.new(site_search_engine: site_search_engine, uris: uris, site_credential: site_credential) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.recrawl_uris({ site_search_engine: site_search_engine, uris: uris, site_credential: site_credential }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.recrawl_uris(::Google::Cloud::DiscoveryEngine::V1::RecrawlUrisRequest.new(site_search_engine: site_search_engine, uris: uris, site_credential: site_credential), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, recrawl_uris_client_stub.call_rpc_count
    end
  end

  def test_batch_verify_target_sites
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"

    batch_verify_target_sites_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :batch_verify_target_sites, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::BatchVerifyTargetSitesRequest, request
      assert_equal "hello world", request["parent"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, batch_verify_target_sites_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.batch_verify_target_sites({ parent: parent }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.batch_verify_target_sites parent: parent do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.batch_verify_target_sites ::Google::Cloud::DiscoveryEngine::V1::BatchVerifyTargetSitesRequest.new(parent: parent) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.batch_verify_target_sites({ parent: parent }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.batch_verify_target_sites(::Google::Cloud::DiscoveryEngine::V1::BatchVerifyTargetSitesRequest.new(parent: parent), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, batch_verify_target_sites_client_stub.call_rpc_count
    end
  end

  def test_fetch_domain_verification_status
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::DiscoveryEngine::V1::FetchDomainVerificationStatusResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    site_search_engine = "hello world"
    page_size = 42
    page_token = "hello world"

    fetch_domain_verification_status_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :fetch_domain_verification_status, name
      assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::FetchDomainVerificationStatusRequest, request
      assert_equal "hello world", request["site_search_engine"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, fetch_domain_verification_status_client_stub do
      # Create client
      client = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.fetch_domain_verification_status({ site_search_engine: site_search_engine, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.fetch_domain_verification_status site_search_engine: site_search_engine, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.fetch_domain_verification_status ::Google::Cloud::DiscoveryEngine::V1::FetchDomainVerificationStatusRequest.new(site_search_engine: site_search_engine, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.fetch_domain_verification_status({ site_search_engine: site_search_engine, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.fetch_domain_verification_status(::Google::Cloud::DiscoveryEngine::V1::FetchDomainVerificationStatusRequest.new(site_search_engine: site_search_engine, page_size: page_size, page_token: page_token), grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, fetch_domain_verification_status_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::DiscoveryEngine::V1::SiteSearchEngineService::Operations, client.operations_client
  end
end

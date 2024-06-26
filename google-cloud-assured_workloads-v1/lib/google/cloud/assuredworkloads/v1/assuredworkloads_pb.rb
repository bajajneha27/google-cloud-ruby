# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/assuredworkloads/v1/assuredworkloads.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/assuredworkloads/v1/assuredworkloads.proto", :syntax => :proto3) do
    add_message "google.cloud.assuredworkloads.v1.CreateWorkloadRequest" do
      optional :parent, :string, 1
      optional :workload, :message, 2, "google.cloud.assuredworkloads.v1.Workload"
      optional :external_id, :string, 3
    end
    add_message "google.cloud.assuredworkloads.v1.UpdateWorkloadRequest" do
      optional :workload, :message, 1, "google.cloud.assuredworkloads.v1.Workload"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.assuredworkloads.v1.DeleteWorkloadRequest" do
      optional :name, :string, 1
      optional :etag, :string, 2
    end
    add_message "google.cloud.assuredworkloads.v1.GetWorkloadRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.assuredworkloads.v1.ListWorkloadsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.assuredworkloads.v1.ListWorkloadsResponse" do
      repeated :workloads, :message, 1, "google.cloud.assuredworkloads.v1.Workload"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.assuredworkloads.v1.Workload" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      repeated :resources, :message, 3, "google.cloud.assuredworkloads.v1.Workload.ResourceInfo"
      optional :compliance_regime, :enum, 4, "google.cloud.assuredworkloads.v1.Workload.ComplianceRegime"
      optional :create_time, :message, 5, "google.protobuf.Timestamp"
      optional :billing_account, :string, 6
      optional :etag, :string, 9
      map :labels, :string, :string, 10
      optional :provisioned_resources_parent, :string, 13
      optional :kms_settings, :message, 14, "google.cloud.assuredworkloads.v1.Workload.KMSSettings"
      repeated :resource_settings, :message, 15, "google.cloud.assuredworkloads.v1.Workload.ResourceSettings"
    end
    add_message "google.cloud.assuredworkloads.v1.Workload.ResourceInfo" do
      optional :resource_id, :int64, 1
      optional :resource_type, :enum, 2, "google.cloud.assuredworkloads.v1.Workload.ResourceInfo.ResourceType"
    end
    add_enum "google.cloud.assuredworkloads.v1.Workload.ResourceInfo.ResourceType" do
      value :RESOURCE_TYPE_UNSPECIFIED, 0
      value :CONSUMER_PROJECT, 1
      value :ENCRYPTION_KEYS_PROJECT, 2
      value :KEYRING, 3
    end
    add_message "google.cloud.assuredworkloads.v1.Workload.KMSSettings" do
      optional :next_rotation_time, :message, 1, "google.protobuf.Timestamp"
      optional :rotation_period, :message, 2, "google.protobuf.Duration"
    end
    add_message "google.cloud.assuredworkloads.v1.Workload.ResourceSettings" do
      optional :resource_id, :string, 1
      optional :resource_type, :enum, 2, "google.cloud.assuredworkloads.v1.Workload.ResourceInfo.ResourceType"
      optional :display_name, :string, 3
    end
    add_enum "google.cloud.assuredworkloads.v1.Workload.ComplianceRegime" do
      value :COMPLIANCE_REGIME_UNSPECIFIED, 0
      value :IL4, 1
      value :CJIS, 2
      value :FEDRAMP_HIGH, 3
      value :FEDRAMP_MODERATE, 4
      value :US_REGIONAL_ACCESS, 5
      value :HIPAA, 6
      value :HITRUST, 7
      value :EU_REGIONS_AND_SUPPORT, 8
      value :CA_REGIONS_AND_SUPPORT, 9
    end
    add_message "google.cloud.assuredworkloads.v1.CreateWorkloadOperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :display_name, :string, 2
      optional :parent, :string, 3
      optional :compliance_regime, :enum, 4, "google.cloud.assuredworkloads.v1.Workload.ComplianceRegime"
    end
  end
end

module Google
  module Cloud
    module AssuredWorkloads
      module V1
        CreateWorkloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1.CreateWorkloadRequest").msgclass
        UpdateWorkloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1.UpdateWorkloadRequest").msgclass
        DeleteWorkloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1.DeleteWorkloadRequest").msgclass
        GetWorkloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1.GetWorkloadRequest").msgclass
        ListWorkloadsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1.ListWorkloadsRequest").msgclass
        ListWorkloadsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1.ListWorkloadsResponse").msgclass
        Workload = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1.Workload").msgclass
        Workload::ResourceInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1.Workload.ResourceInfo").msgclass
        Workload::ResourceInfo::ResourceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1.Workload.ResourceInfo.ResourceType").enummodule
        Workload::KMSSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1.Workload.KMSSettings").msgclass
        Workload::ResourceSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1.Workload.ResourceSettings").msgclass
        Workload::ComplianceRegime = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1.Workload.ComplianceRegime").enummodule
        CreateWorkloadOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1.CreateWorkloadOperationMetadata").msgclass
      end
    end
  end
end

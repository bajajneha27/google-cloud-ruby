# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/managedidentities/v1/managed_identities_service.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/managedidentities/v1/resource_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/managedidentities/v1/managed_identities_service.proto", :syntax => :proto3) do
    add_message "google.cloud.managedidentities.v1.OpMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :requested_cancellation, :bool, 5
      optional :api_version, :string, 6
    end
    add_message "google.cloud.managedidentities.v1.CreateMicrosoftAdDomainRequest" do
      optional :parent, :string, 1
      optional :domain_name, :string, 2
      optional :domain, :message, 3, "google.cloud.managedidentities.v1.Domain"
    end
    add_message "google.cloud.managedidentities.v1.ResetAdminPasswordRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.managedidentities.v1.ResetAdminPasswordResponse" do
      optional :password, :string, 1
    end
    add_message "google.cloud.managedidentities.v1.ListDomainsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.managedidentities.v1.ListDomainsResponse" do
      repeated :domains, :message, 1, "google.cloud.managedidentities.v1.Domain"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.managedidentities.v1.GetDomainRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.managedidentities.v1.UpdateDomainRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :domain, :message, 2, "google.cloud.managedidentities.v1.Domain"
    end
    add_message "google.cloud.managedidentities.v1.DeleteDomainRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.managedidentities.v1.AttachTrustRequest" do
      optional :name, :string, 1
      optional :trust, :message, 2, "google.cloud.managedidentities.v1.Trust"
    end
    add_message "google.cloud.managedidentities.v1.ReconfigureTrustRequest" do
      optional :name, :string, 1
      optional :target_domain_name, :string, 2
      repeated :target_dns_ip_addresses, :string, 3
    end
    add_message "google.cloud.managedidentities.v1.DetachTrustRequest" do
      optional :name, :string, 1
      optional :trust, :message, 2, "google.cloud.managedidentities.v1.Trust"
    end
    add_message "google.cloud.managedidentities.v1.ValidateTrustRequest" do
      optional :name, :string, 1
      optional :trust, :message, 2, "google.cloud.managedidentities.v1.Trust"
    end
  end
end

module Google
  module Cloud
    module ManagedIdentities
      module V1
        OpMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.OpMetadata").msgclass
        CreateMicrosoftAdDomainRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.CreateMicrosoftAdDomainRequest").msgclass
        ResetAdminPasswordRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.ResetAdminPasswordRequest").msgclass
        ResetAdminPasswordResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.ResetAdminPasswordResponse").msgclass
        ListDomainsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.ListDomainsRequest").msgclass
        ListDomainsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.ListDomainsResponse").msgclass
        GetDomainRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.GetDomainRequest").msgclass
        UpdateDomainRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.UpdateDomainRequest").msgclass
        DeleteDomainRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.DeleteDomainRequest").msgclass
        AttachTrustRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.AttachTrustRequest").msgclass
        ReconfigureTrustRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.ReconfigureTrustRequest").msgclass
        DetachTrustRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.DetachTrustRequest").msgclass
        ValidateTrustRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.managedidentities.v1.ValidateTrustRequest").msgclass
      end
    end
  end
end

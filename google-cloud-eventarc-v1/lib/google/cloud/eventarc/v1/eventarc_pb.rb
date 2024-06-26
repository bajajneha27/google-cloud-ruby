# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/eventarc/v1/eventarc.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/eventarc/v1/trigger_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/eventarc/v1/eventarc.proto", :syntax => :proto3) do
    add_message "google.cloud.eventarc.v1.GetTriggerRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.eventarc.v1.ListTriggersRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :order_by, :string, 4
    end
    add_message "google.cloud.eventarc.v1.ListTriggersResponse" do
      repeated :triggers, :message, 1, "google.cloud.eventarc.v1.Trigger"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.eventarc.v1.CreateTriggerRequest" do
      optional :parent, :string, 1
      optional :trigger, :message, 2, "google.cloud.eventarc.v1.Trigger"
      optional :trigger_id, :string, 3
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.eventarc.v1.UpdateTriggerRequest" do
      optional :trigger, :message, 1, "google.cloud.eventarc.v1.Trigger"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
      optional :allow_missing, :bool, 3
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.eventarc.v1.DeleteTriggerRequest" do
      optional :name, :string, 1
      optional :etag, :string, 2
      optional :allow_missing, :bool, 3
      optional :validate_only, :bool, 4
    end
    add_message "google.cloud.eventarc.v1.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_message, :string, 5
      optional :requested_cancellation, :bool, 6
      optional :api_version, :string, 7
    end
  end
end

module Google
  module Cloud
    module Eventarc
      module V1
        GetTriggerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.GetTriggerRequest").msgclass
        ListTriggersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListTriggersRequest").msgclass
        ListTriggersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.ListTriggersResponse").msgclass
        CreateTriggerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.CreateTriggerRequest").msgclass
        UpdateTriggerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.UpdateTriggerRequest").msgclass
        DeleteTriggerRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.DeleteTriggerRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.eventarc.v1.OperationMetadata").msgclass
      end
    end
  end
end

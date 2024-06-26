# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/documentai/v1beta3/processor.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/documentai/v1beta3/document_io_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/documentai/v1beta3/processor.proto", :syntax => :proto3) do
    add_message "google.cloud.documentai.v1beta3.Processor" do
      optional :name, :string, 1
      optional :type, :string, 2
      optional :display_name, :string, 3
      optional :state, :enum, 4, "google.cloud.documentai.v1beta3.Processor.State"
      optional :default_processor_version, :string, 9
      optional :process_endpoint, :string, 6
      optional :create_time, :message, 7, "google.protobuf.Timestamp"
      optional :kms_key_name, :string, 8
    end
    add_enum "google.cloud.documentai.v1beta3.Processor.State" do
      value :STATE_UNSPECIFIED, 0
      value :ENABLED, 1
      value :DISABLED, 2
      value :ENABLING, 3
      value :DISABLING, 4
      value :CREATING, 5
      value :FAILED, 6
      value :DELETING, 7
    end
  end
end

module Google
  module Cloud
    module DocumentAI
      module V1beta3
        Processor = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.Processor").msgclass
        Processor::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.documentai.v1beta3.Processor.State").enummodule
      end
    end
  end
end

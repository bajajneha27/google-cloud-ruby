# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/appengine/v1/operation.proto

require 'google/protobuf'

require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/appengine/v1/operation.proto", :syntax => :proto3) do
    add_message "google.appengine.v1.OperationMetadataV1" do
      optional :method, :string, 1
      optional :insert_time, :message, 2, "google.protobuf.Timestamp"
      optional :end_time, :message, 3, "google.protobuf.Timestamp"
      optional :user, :string, 4
      optional :target, :string, 5
      optional :ephemeral_message, :string, 6
      repeated :warning, :string, 7
      oneof :method_metadata do
        optional :create_version_metadata, :message, 8, "google.appengine.v1.CreateVersionMetadataV1"
      end
    end
    add_message "google.appengine.v1.CreateVersionMetadataV1" do
      optional :cloud_build_id, :string, 1
    end
  end
end

module Google
  module Cloud
    module AppEngine
      module V1
        OperationMetadataV1 = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.OperationMetadataV1").msgclass
        CreateVersionMetadataV1 = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.appengine.v1.CreateVersionMetadataV1").msgclass
      end
    end
  end
end

# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/securitycenter/v1p1beta1/folder.proto

require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/securitycenter/v1p1beta1/folder.proto", :syntax => :proto3) do
    add_message "google.cloud.securitycenter.v1p1beta1.Folder" do
      optional :resource_folder, :string, 1
      optional :resource_folder_display_name, :string, 2
    end
  end
end

module Google
  module Cloud
    module SecurityCenter
      module V1p1Beta1
        Folder = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.securitycenter.v1p1beta1.Folder").msgclass
      end
    end
  end
end

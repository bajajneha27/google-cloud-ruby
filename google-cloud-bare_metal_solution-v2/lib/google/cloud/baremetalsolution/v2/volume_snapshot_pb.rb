# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/baremetalsolution/v2/volume_snapshot.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n7google/cloud/baremetalsolution/v2/volume_snapshot.proto\x12!google.cloud.baremetalsolution.v2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xe7\x03\n\x0eVolumeSnapshot\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0f\n\x02id\x18\x06 \x01(\tB\x03\xe0\x41\x03\x12\x13\n\x0b\x64\x65scription\x18\x02 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x04 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12G\n\x0estorage_volume\x18\x05 \x01(\tB/\xe0\x41\x03\xfa\x41)\n\'baremetalsolution.googleapis.com/Volume\x12Q\n\x04type\x18\x07 \x01(\x0e\x32>.google.cloud.baremetalsolution.v2.VolumeSnapshot.SnapshotTypeB\x03\xe0\x41\x03\"H\n\x0cSnapshotType\x12\x1d\n\x19SNAPSHOT_TYPE_UNSPECIFIED\x10\x00\x12\n\n\x06\x41\x44_HOC\x10\x01\x12\r\n\tSCHEDULED\x10\x02:\x84\x01\xea\x41\x80\x01\n/baremetalsolution.googleapis.com/VolumeSnapshot\x12Mprojects/{project}/locations/{location}/volumes/{volume}/snapshots/{snapshot}\"a\n\x18GetVolumeSnapshotRequest\x12\x45\n\x04name\x18\x01 \x01(\tB7\xe0\x41\x02\xfa\x41\x31\n/baremetalsolution.googleapis.com/VolumeSnapshot\"\x84\x01\n\x1aListVolumeSnapshotsRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'baremetalsolution.googleapis.com/Volume\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x98\x01\n\x1bListVolumeSnapshotsResponse\x12K\n\x10volume_snapshots\x18\x01 \x03(\x0b\x32\x31.google.cloud.baremetalsolution.v2.VolumeSnapshot\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"d\n\x1b\x44\x65leteVolumeSnapshotRequest\x12\x45\n\x04name\x18\x01 \x01(\tB7\xe0\x41\x02\xfa\x41\x31\n/baremetalsolution.googleapis.com/VolumeSnapshot\"\xaf\x01\n\x1b\x43reateVolumeSnapshotRequest\x12?\n\x06parent\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'baremetalsolution.googleapis.com/Volume\x12O\n\x0fvolume_snapshot\x18\x02 \x01(\x0b\x32\x31.google.cloud.baremetalsolution.v2.VolumeSnapshotB\x03\xe0\x41\x02\"p\n\x1cRestoreVolumeSnapshotRequest\x12P\n\x0fvolume_snapshot\x18\x01 \x01(\tB7\xe0\x41\x02\xfa\x41\x31\n/baremetalsolution.googleapis.com/VolumeSnapshotB\x82\x02\n%com.google.cloud.baremetalsolution.v2B\x13VolumeSnapshotProtoP\x01ZScloud.google.com/go/baremetalsolution/apiv2/baremetalsolutionpb;baremetalsolutionpb\xaa\x02!Google.Cloud.BareMetalSolution.V2\xca\x02!Google\\Cloud\\BareMetalSolution\\V2\xea\x02$Google::Cloud::BareMetalSolution::V2b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module BareMetalSolution
      module V2
        VolumeSnapshot = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.VolumeSnapshot").msgclass
        VolumeSnapshot::SnapshotType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.VolumeSnapshot.SnapshotType").enummodule
        GetVolumeSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.GetVolumeSnapshotRequest").msgclass
        ListVolumeSnapshotsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ListVolumeSnapshotsRequest").msgclass
        ListVolumeSnapshotsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.ListVolumeSnapshotsResponse").msgclass
        DeleteVolumeSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.DeleteVolumeSnapshotRequest").msgclass
        CreateVolumeSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.CreateVolumeSnapshotRequest").msgclass
        RestoreVolumeSnapshotRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.baremetalsolution.v2.RestoreVolumeSnapshotRequest").msgclass
      end
    end
  end
end
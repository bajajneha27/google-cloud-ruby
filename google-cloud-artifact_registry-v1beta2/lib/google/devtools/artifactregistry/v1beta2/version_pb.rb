# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/devtools/artifactregistry/v1beta2/version.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/devtools/artifactregistry/v1beta2/tag_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n6google/devtools/artifactregistry/v1beta2/version.proto\x12(google.devtools.artifactregistry.v1beta2\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x32google/devtools/artifactregistry/v1beta2/tag.proto\x1a\x1cgoogle/protobuf/struct.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\x9d\x03\n\x07Version\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x12/\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0bupdate_time\x18\x06 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x43\n\x0crelated_tags\x18\x07 \x03(\x0b\x32-.google.devtools.artifactregistry.v1beta2.Tag\x12/\n\x08metadata\x18\x08 \x01(\x0b\x32\x17.google.protobuf.StructB\x04\xe2\x41\x01\x03:\x96\x01\xea\x41\x92\x01\n\'artifactregistry.googleapis.com/Version\x12gprojects/{project}/locations/{location}/repositories/{repository}/packages/{package}/versions/{version}\"\xa9\x01\n\x13ListVersionsRequest\x12\x0e\n\x06parent\x18\x01 \x01(\t\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x43\n\x04view\x18\x04 \x01(\x0e\x32\x35.google.devtools.artifactregistry.v1beta2.VersionView\x12\x16\n\x08order_by\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\"t\n\x14ListVersionsResponse\x12\x43\n\x08versions\x18\x01 \x03(\x0b\x32\x31.google.devtools.artifactregistry.v1beta2.Version\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"f\n\x11GetVersionRequest\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x43\n\x04view\x18\x02 \x01(\x0e\x32\x35.google.devtools.artifactregistry.v1beta2.VersionView\"3\n\x14\x44\x65leteVersionRequest\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\r\n\x05\x66orce\x18\x02 \x01(\x08*@\n\x0bVersionView\x12\x1c\n\x18VERSION_VIEW_UNSPECIFIED\x10\x00\x12\t\n\x05\x42\x41SIC\x10\x01\x12\x08\n\x04\x46ULL\x10\x02\x42\x90\x02\n,com.google.devtools.artifactregistry.v1beta2B\x0cVersionProtoP\x01ZUcloud.google.com/go/artifactregistry/apiv1beta2/artifactregistrypb;artifactregistrypb\xaa\x02%Google.Cloud.ArtifactRegistry.V1Beta2\xca\x02%Google\\Cloud\\ArtifactRegistry\\V1beta2\xea\x02(Google::Cloud::ArtifactRegistry::V1beta2b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.devtools.artifactregistry.v1beta2.Tag", "google/devtools/artifactregistry/v1beta2/tag.proto"],
    ["google.protobuf.Struct", "google/protobuf/struct.proto"],
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
    module ArtifactRegistry
      module V1beta2
        Version = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.Version").msgclass
        ListVersionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ListVersionsRequest").msgclass
        ListVersionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.ListVersionsResponse").msgclass
        GetVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.GetVersionRequest").msgclass
        DeleteVersionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.DeleteVersionRequest").msgclass
        VersionView = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.devtools.artifactregistry.v1beta2.VersionView").enummodule
      end
    end
  end
end

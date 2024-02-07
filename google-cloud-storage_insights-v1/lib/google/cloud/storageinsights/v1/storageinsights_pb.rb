# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/storageinsights/v1/storageinsights.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'
require 'google/type/date_pb'
require 'google/type/datetime_pb'


descriptor_data = "\n5google/cloud/storageinsights/v1/storageinsights.proto\x12\x1fgoogle.cloud.storageinsights.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\x1a\x16google/type/date.proto\x1a\x1agoogle/type/datetime.proto\"\xa8\x01\n\x18ListReportConfigsRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\x12+storageinsights.googleapis.com/ReportConfig\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"\x90\x01\n\x19ListReportConfigsResponse\x12\x45\n\x0ereport_configs\x18\x01 \x03(\x0b\x32-.google.cloud.storageinsights.v1.ReportConfig\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"[\n\x16GetReportConfigRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+storageinsights.googleapis.com/ReportConfig\"\xc4\x01\n\x19\x43reateReportConfigRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\x12+storageinsights.googleapis.com/ReportConfig\x12I\n\rreport_config\x18\x03 \x01(\x0b\x32-.google.cloud.storageinsights.v1.ReportConfigB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\xb5\x01\n\x19UpdateReportConfigRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12I\n\rreport_config\x18\x02 \x01(\x0b\x32-.google.cloud.storageinsights.v1.ReportConfigB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\x8b\x01\n\x19\x44\x65leteReportConfigRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+storageinsights.googleapis.com/ReportConfig\x12\x12\n\x05\x66orce\x18\x02 \x01(\x08\x42\x03\xe0\x41\x01\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"\xe3\x04\n\x0cReportDetail\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x31\n\rsnapshot_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x1a\n\x12report_path_prefix\x18\x08 \x01(\t\x12\x14\n\x0cshards_count\x18\t \x01(\x03\x12\"\n\x06status\x18\x04 \x01(\x0b\x32\x12.google.rpc.Status\x12I\n\x06labels\x18\x05 \x03(\x0b\x32\x39.google.cloud.storageinsights.v1.ReportDetail.LabelsEntry\x12.\n\x0ftarget_datetime\x18\x06 \x01(\x0b\x32\x15.google.type.DateTime\x12M\n\x0ereport_metrics\x18\x07 \x01(\x0b\x32\x35.google.cloud.storageinsights.v1.ReportDetail.Metrics\x1a*\n\x07Metrics\x12\x1f\n\x17processed_records_count\x18\x01 \x01(\x03\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:\x96\x01\xea\x41\x92\x01\n+storageinsights.googleapis.com/ReportDetail\x12\x63projects/{project}/locations/{location}/reportConfigs/{report_config}/reportDetails/{report_detail}\"\xa8\x01\n\x18ListReportDetailsRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\x12+storageinsights.googleapis.com/ReportDetail\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"\x90\x01\n\x19ListReportDetailsResponse\x12\x45\n\x0ereport_details\x18\x01 \x03(\x0b\x32-.google.cloud.storageinsights.v1.ReportDetail\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"[\n\x16GetReportDetailRequest\x12\x41\n\x04name\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+storageinsights.googleapis.com/ReportDetail\"\x80\x02\n\x11OperationMetadata\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\"\xed\x01\n\x10\x46requencyOptions\x12N\n\tfrequency\x18\x01 \x01(\x0e\x32;.google.cloud.storageinsights.v1.FrequencyOptions.Frequency\x12%\n\nstart_date\x18\x02 \x01(\x0b\x32\x11.google.type.Date\x12#\n\x08\x65nd_date\x18\x03 \x01(\x0b\x32\x11.google.type.Date\"=\n\tFrequency\x12\x19\n\x15\x46REQUENCY_UNSPECIFIED\x10\x00\x12\t\n\x05\x44\x41ILY\x10\x01\x12\n\n\x06WEEKLY\x10\x02\"R\n\nCSVOptions\x12\x18\n\x10record_separator\x18\x01 \x01(\t\x12\x11\n\tdelimiter\x18\x02 \x01(\t\x12\x17\n\x0fheader_required\x18\x03 \x01(\x08\"\x10\n\x0eParquetOptions\"%\n\x13\x43loudStorageFilters\x12\x0e\n\x06\x62ucket\x18\x01 \x01(\t\"J\n\x1e\x43loudStorageDestinationOptions\x12\x0e\n\x06\x62ucket\x18\x01 \x01(\t\x12\x18\n\x10\x64\x65stination_path\x18\x02 \x01(\t\"\x90\x02\n\x1bObjectMetadataReportOptions\x12\x17\n\x0fmetadata_fields\x18\x01 \x03(\t\x12O\n\x0fstorage_filters\x18\x02 \x01(\x0b\x32\x34.google.cloud.storageinsights.v1.CloudStorageFiltersH\x00\x12\x66\n\x1bstorage_destination_options\x18\x03 \x01(\x0b\x32?.google.cloud.storageinsights.v1.CloudStorageDestinationOptionsH\x01\x42\x08\n\x06\x66ilterB\x15\n\x13\x64\x65stination_options\"\xf7\x05\n\x0cReportConfig\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x34\n\x0b\x63reate_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x34\n\x0bupdate_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12L\n\x11\x66requency_options\x18\x05 \x01(\x0b\x32\x31.google.cloud.storageinsights.v1.FrequencyOptions\x12\x42\n\x0b\x63sv_options\x18\x06 \x01(\x0b\x32+.google.cloud.storageinsights.v1.CSVOptionsH\x00\x12J\n\x0fparquet_options\x18\x07 \x01(\x0b\x32/.google.cloud.storageinsights.v1.ParquetOptionsH\x00\x12\x66\n\x1eobject_metadata_report_options\x18\x08 \x01(\x0b\x32<.google.cloud.storageinsights.v1.ObjectMetadataReportOptionsH\x01\x12I\n\x06labels\x18\n \x03(\x0b\x32\x39.google.cloud.storageinsights.v1.ReportConfig.LabelsEntry\x12\x14\n\x0c\x64isplay_name\x18\x0b \x01(\t\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01:w\xea\x41t\n+storageinsights.googleapis.com/ReportConfig\x12\x45projects/{project}/locations/{location}/reportConfigs/{report_config}B\x0f\n\rreport_formatB\r\n\x0breport_kind2\xa9\x0c\n\x0fStorageInsights\x12\xce\x01\n\x11ListReportConfigs\x12\x39.google.cloud.storageinsights.v1.ListReportConfigsRequest\x1a:.google.cloud.storageinsights.v1.ListReportConfigsResponse\"B\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x33\x12\x31/v1/{parent=projects/*/locations/*}/reportConfigs\x12\xbb\x01\n\x0fGetReportConfig\x12\x37.google.cloud.storageinsights.v1.GetReportConfigRequest\x1a-.google.cloud.storageinsights.v1.ReportConfig\"@\xda\x41\x04name\x82\xd3\xe4\x93\x02\x33\x12\x31/v1/{name=projects/*/locations/*/reportConfigs/*}\x12\xe0\x01\n\x12\x43reateReportConfig\x12:.google.cloud.storageinsights.v1.CreateReportConfigRequest\x1a-.google.cloud.storageinsights.v1.ReportConfig\"_\xda\x41\x14parent,report_config\x82\xd3\xe4\x93\x02\x42\"1/v1/{parent=projects/*/locations/*}/reportConfigs:\rreport_config\x12\xf3\x01\n\x12UpdateReportConfig\x12:.google.cloud.storageinsights.v1.UpdateReportConfigRequest\x1a-.google.cloud.storageinsights.v1.ReportConfig\"r\xda\x41\x19report_config,update_mask\x82\xd3\xe4\x93\x02P2?/v1/{report_config.name=projects/*/locations/*/reportConfigs/*}:\rreport_config\x12\xaa\x01\n\x12\x44\x65leteReportConfig\x12:.google.cloud.storageinsights.v1.DeleteReportConfigRequest\x1a\x16.google.protobuf.Empty\"@\xda\x41\x04name\x82\xd3\xe4\x93\x02\x33*1/v1/{name=projects/*/locations/*/reportConfigs/*}\x12\xde\x01\n\x11ListReportDetails\x12\x39.google.cloud.storageinsights.v1.ListReportDetailsRequest\x1a:.google.cloud.storageinsights.v1.ListReportDetailsResponse\"R\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x43\x12\x41/v1/{parent=projects/*/locations/*/reportConfigs/*}/reportDetails\x12\xcb\x01\n\x0fGetReportDetail\x12\x37.google.cloud.storageinsights.v1.GetReportDetailRequest\x1a-.google.cloud.storageinsights.v1.ReportDetail\"P\xda\x41\x04name\x82\xd3\xe4\x93\x02\x43\x12\x41/v1/{name=projects/*/locations/*/reportConfigs/*/reportDetails/*}\x1aR\xca\x41\x1estorageinsights.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xe8\x01\n#com.google.cloud.storageinsights.v1B\x07V1ProtoP\x01ZMcloud.google.com/go/storageinsights/apiv1/storageinsightspb;storageinsightspb\xaa\x02\x1fGoogle.Cloud.StorageInsights.V1\xca\x02\x1fGoogle\\Cloud\\StorageInsights\\V1\xea\x02\"Google::Cloud::StorageInsights::V1b\x06proto3"

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
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.type.DateTime", "google/type/datetime.proto"],
    ["google.type.Date", "google/type/date.proto"],
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
    module StorageInsights
      module V1
        ListReportConfigsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.ListReportConfigsRequest").msgclass
        ListReportConfigsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.ListReportConfigsResponse").msgclass
        GetReportConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.GetReportConfigRequest").msgclass
        CreateReportConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.CreateReportConfigRequest").msgclass
        UpdateReportConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.UpdateReportConfigRequest").msgclass
        DeleteReportConfigRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.DeleteReportConfigRequest").msgclass
        ReportDetail = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.ReportDetail").msgclass
        ReportDetail::Metrics = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.ReportDetail.Metrics").msgclass
        ListReportDetailsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.ListReportDetailsRequest").msgclass
        ListReportDetailsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.ListReportDetailsResponse").msgclass
        GetReportDetailRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.GetReportDetailRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.OperationMetadata").msgclass
        FrequencyOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.FrequencyOptions").msgclass
        FrequencyOptions::Frequency = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.FrequencyOptions.Frequency").enummodule
        CSVOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.CSVOptions").msgclass
        ParquetOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.ParquetOptions").msgclass
        CloudStorageFilters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.CloudStorageFilters").msgclass
        CloudStorageDestinationOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.CloudStorageDestinationOptions").msgclass
        ObjectMetadataReportOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.ObjectMetadataReportOptions").msgclass
        ReportConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.storageinsights.v1.ReportConfig").msgclass
      end
    end
  end
end

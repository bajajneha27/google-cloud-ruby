# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/assuredworkloads/v1beta1/assuredworkloads.proto

require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n<google/cloud/assuredworkloads/v1beta1/assuredworkloads.proto\x12%google.cloud.assuredworkloads.v1beta1\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xbe\x01\n\x15\x43reateWorkloadRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe2\x41\x01\x02\xfa\x41*\x12(assuredworkloads.googleapis.com/Workload\x12G\n\x08workload\x18\x02 \x01(\x0b\x32/.google.cloud.assuredworkloads.v1beta1.WorkloadB\x04\xe2\x41\x01\x02\x12\x19\n\x0b\x65xternal_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\"\x97\x01\n\x15UpdateWorkloadRequest\x12G\n\x08workload\x18\x01 \x01(\x0b\x32/.google.cloud.assuredworkloads.v1beta1.WorkloadB\x04\xe2\x41\x01\x02\x12\x35\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x02\"\x9e\x02\n\x1fRestrictAllowedResourcesRequest\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x02\x12v\n\x10restriction_type\x18\x02 \x01(\x0e\x32V.google.cloud.assuredworkloads.v1beta1.RestrictAllowedResourcesRequest.RestrictionTypeB\x04\xe2\x41\x01\x02\"o\n\x0fRestrictionType\x12 \n\x1cRESTRICTION_TYPE_UNSPECIFIED\x10\x00\x12\x1b\n\x17\x41LLOW_ALL_GCP_RESOURCES\x10\x01\x12\x1d\n\x19\x41LLOW_COMPLIANT_RESOURCES\x10\x02\"\"\n RestrictAllowedResourcesResponse\"l\n\x15\x44\x65leteWorkloadRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe2\x41\x01\x02\xfa\x41*\n(assuredworkloads.googleapis.com/Workload\x12\x12\n\x04\x65tag\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\"U\n\x12GetWorkloadRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe2\x41\x01\x02\xfa\x41*\n(assuredworkloads.googleapis.com/Workload\"t\n\x1a\x41nalyzeWorkloadMoveRequest\x12\x10\n\x06source\x18\x01 \x01(\tH\x00\x12\x11\n\x07project\x18\x03 \x01(\tH\x00\x12\x14\n\x06target\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x42\x1b\n\x19projectOrWorkloadResource\"/\n\x1b\x41nalyzeWorkloadMoveResponse\x12\x10\n\x08\x62lockers\x18\x01 \x03(\t\"\x90\x01\n\x14ListWorkloadsRequest\x12\x41\n\x06parent\x18\x01 \x01(\tB1\xe2\x41\x01\x02\xfa\x41*\x12(assuredworkloads.googleapis.com/Workload\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\"t\n\x15ListWorkloadsResponse\x12\x42\n\tworkloads\x18\x01 \x03(\x0b\x32/.google.cloud.assuredworkloads.v1beta1.Workload\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xcf\x1b\n\x08Workload\x12\x12\n\x04name\x18\x01 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1a\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12U\n\tresources\x18\x03 \x03(\x0b\x32<.google.cloud.assuredworkloads.v1beta1.Workload.ResourceInfoB\x04\xe2\x41\x01\x03\x12\x62\n\x11\x63ompliance_regime\x18\x04 \x01(\x0e\x32@.google.cloud.assuredworkloads.v1beta1.Workload.ComplianceRegimeB\x05\xe2\x41\x02\x02\x05\x12\x36\n\x0b\x63reate_time\x18\x05 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x05\xe2\x41\x02\x03\x05\x12\x1d\n\x0f\x62illing_account\x18\x06 \x01(\tB\x04\xe2\x41\x01\x03\x12\\\n\x0cil4_settings\x18\x07 \x01(\x0b\x32;.google.cloud.assuredworkloads.v1beta1.Workload.IL4SettingsB\x07\x18\x01\xe2\x41\x02\x04\x05H\x00\x12^\n\rcjis_settings\x18\x08 \x01(\x0b\x32<.google.cloud.assuredworkloads.v1beta1.Workload.CJISSettingsB\x07\x18\x01\xe2\x41\x02\x04\x05H\x00\x12m\n\x15\x66\x65\x64ramp_high_settings\x18\x0b \x01(\x0b\x32\x43.google.cloud.assuredworkloads.v1beta1.Workload.FedrampHighSettingsB\x07\x18\x01\xe2\x41\x02\x04\x05H\x00\x12u\n\x19\x66\x65\x64ramp_moderate_settings\x18\x0c \x01(\x0b\x32G.google.cloud.assuredworkloads.v1beta1.Workload.FedrampModerateSettingsB\x07\x18\x01\xe2\x41\x02\x04\x05H\x00\x12\x12\n\x04\x65tag\x18\t \x01(\tB\x04\xe2\x41\x01\x01\x12Q\n\x06labels\x18\n \x03(\x0b\x32;.google.cloud.assuredworkloads.v1beta1.Workload.LabelsEntryB\x04\xe2\x41\x01\x01\x12*\n\x1cprovisioned_resources_parent\x18\r \x01(\tB\x04\xe2\x41\x01\x04\x12Y\n\x0ckms_settings\x18\x0e \x01(\x0b\x32;.google.cloud.assuredworkloads.v1beta1.Workload.KMSSettingsB\x06\x18\x01\xe2\x41\x01\x04\x12\x61\n\x11resource_settings\x18\x0f \x03(\x0b\x32@.google.cloud.assuredworkloads.v1beta1.Workload.ResourceSettingsB\x04\xe2\x41\x01\x04\x12\x66\n\x14kaj_enrollment_state\x18\x11 \x01(\x0e\x32\x42.google.cloud.assuredworkloads.v1beta1.Workload.KajEnrollmentStateB\x04\xe2\x41\x01\x03\x12\'\n\x19\x65nable_sovereign_controls\x18\x12 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12l\n\x17saa_enrollment_response\x18\x14 \x01(\x0b\x32\x45.google.cloud.assuredworkloads.v1beta1.Workload.SaaEnrollmentResponseB\x04\xe2\x41\x01\x03\x12/\n!compliant_but_disallowed_services\x18\x18 \x03(\tB\x04\xe2\x41\x01\x03\x1a\x8e\x02\n\x0cResourceInfo\x12\x13\n\x0bresource_id\x18\x01 \x01(\x03\x12`\n\rresource_type\x18\x02 \x01(\x0e\x32I.google.cloud.assuredworkloads.v1beta1.Workload.ResourceInfo.ResourceType\"\x86\x01\n\x0cResourceType\x12\x1d\n\x19RESOURCE_TYPE_UNSPECIFIED\x10\x00\x12\x18\n\x10\x43ONSUMER_PROJECT\x10\x01\x1a\x02\x08\x01\x12\x13\n\x0f\x43ONSUMER_FOLDER\x10\x04\x12\x1b\n\x17\x45NCRYPTION_KEYS_PROJECT\x10\x02\x12\x0b\n\x07KEYRING\x10\x03\x1a\x8d\x01\n\x0bKMSSettings\x12>\n\x12next_rotation_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x06\xe2\x41\x03\x02\x04\x05\x12:\n\x0frotation_period\x18\x02 \x01(\x0b\x32\x19.google.protobuf.DurationB\x06\xe2\x41\x03\x02\x04\x05:\x02\x18\x01\x1ak\n\x0bIL4Settings\x12X\n\x0ckms_settings\x18\x01 \x01(\x0b\x32;.google.cloud.assuredworkloads.v1beta1.Workload.KMSSettingsB\x05\xe2\x41\x02\x04\x05:\x02\x18\x01\x1al\n\x0c\x43JISSettings\x12X\n\x0ckms_settings\x18\x01 \x01(\x0b\x32;.google.cloud.assuredworkloads.v1beta1.Workload.KMSSettingsB\x05\xe2\x41\x02\x04\x05:\x02\x18\x01\x1as\n\x13\x46\x65\x64rampHighSettings\x12X\n\x0ckms_settings\x18\x01 \x01(\x0b\x32;.google.cloud.assuredworkloads.v1beta1.Workload.KMSSettingsB\x05\xe2\x41\x02\x04\x05:\x02\x18\x01\x1aw\n\x17\x46\x65\x64rampModerateSettings\x12X\n\x0ckms_settings\x18\x01 \x01(\x0b\x32;.google.cloud.assuredworkloads.v1beta1.Workload.KMSSettingsB\x05\xe2\x41\x02\x04\x05:\x02\x18\x01\x1a\x9f\x01\n\x10ResourceSettings\x12\x13\n\x0bresource_id\x18\x01 \x01(\t\x12`\n\rresource_type\x18\x02 \x01(\x0e\x32I.google.cloud.assuredworkloads.v1beta1.Workload.ResourceInfo.ResourceType\x12\x14\n\x0c\x64isplay_name\x18\x03 \x01(\t\x1a\x86\x04\n\x15SaaEnrollmentResponse\x12k\n\x0csetup_status\x18\x01 \x01(\x0e\x32P.google.cloud.assuredworkloads.v1beta1.Workload.SaaEnrollmentResponse.SetupStateH\x00\x88\x01\x01\x12\x66\n\x0csetup_errors\x18\x02 \x03(\x0e\x32P.google.cloud.assuredworkloads.v1beta1.Workload.SaaEnrollmentResponse.SetupError\"R\n\nSetupState\x12\x1b\n\x17SETUP_STATE_UNSPECIFIED\x10\x00\x12\x12\n\x0eSTATUS_PENDING\x10\x01\x12\x13\n\x0fSTATUS_COMPLETE\x10\x02\"\xb2\x01\n\nSetupError\x12\x1b\n\x17SETUP_ERROR_UNSPECIFIED\x10\x00\x12\x1c\n\x18\x45RROR_INVALID_BASE_SETUP\x10\x01\x12&\n\"ERROR_MISSING_EXTERNAL_SIGNING_KEY\x10\x02\x12#\n\x1f\x45RROR_NOT_ALL_SERVICES_ENROLLED\x10\x03\x12\x1c\n\x18\x45RROR_SETUP_CHECK_FAILED\x10\x04\x42\x0f\n\r_setup_status\x1a-\n\x0bLabelsEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\r\n\x05value\x18\x02 \x01(\t:\x02\x38\x01\"\x81\x02\n\x10\x43omplianceRegime\x12!\n\x1d\x43OMPLIANCE_REGIME_UNSPECIFIED\x10\x00\x12\x07\n\x03IL4\x10\x01\x12\x08\n\x04\x43JIS\x10\x02\x12\x10\n\x0c\x46\x45\x44RAMP_HIGH\x10\x03\x12\x14\n\x10\x46\x45\x44RAMP_MODERATE\x10\x04\x12\x16\n\x12US_REGIONAL_ACCESS\x10\x05\x12\t\n\x05HIPAA\x10\x06\x12\x0b\n\x07HITRUST\x10\x07\x12\x1a\n\x16\x45U_REGIONS_AND_SUPPORT\x10\x08\x12\x1a\n\x16\x43\x41_REGIONS_AND_SUPPORT\x10\t\x12\x08\n\x04ITAR\x10\n\x12\x1d\n\x19\x41U_REGIONS_AND_US_SUPPORT\x10\x0b\"\x7f\n\x12KajEnrollmentState\x12$\n KAJ_ENROLLMENT_STATE_UNSPECIFIED\x10\x00\x12 \n\x1cKAJ_ENROLLMENT_STATE_PENDING\x10\x01\x12!\n\x1dKAJ_ENROLLMENT_STATE_COMPLETE\x10\x02:u\xea\x41r\n(assuredworkloads.googleapis.com/Workload\x12\x46organizations/{organization}/locations/{location}/workloads/{workload}B\x1c\n\x1a\x63ompliance_regime_settings\"\xd0\x02\n\x1f\x43reateWorkloadOperationMetadata\x12\x35\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x01\x12\x1a\n\x0c\x64isplay_name\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x14\n\x06parent\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x61\n\x11\x63ompliance_regime\x18\x04 \x01(\x0e\x32@.google.cloud.assuredworkloads.v1beta1.Workload.ComplianceRegimeB\x04\xe2\x41\x01\x01\x12\x61\n\x11resource_settings\x18\x05 \x03(\x0b\x32@.google.cloud.assuredworkloads.v1beta1.Workload.ResourceSettingsB\x04\xe2\x41\x01\x01\x42\xf6\x02\n)com.google.cloud.assuredworkloads.v1beta1B\x15\x41ssuredworkloadsProtoP\x01ZUcloud.google.com/go/assuredworkloads/apiv1beta1/assuredworkloadspb;assuredworkloadspb\xaa\x02%Google.Cloud.AssuredWorkloads.V1Beta1\xca\x02%Google\\Cloud\\AssuredWorkloads\\V1beta1\xea\x02(Google::Cloud::AssuredWorkloads::V1beta1\xea\x41]\n(assuredworkloads.googleapis.com/Location\x12\x31organizations/{organization}/locations/{location}b\x06proto3"

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
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module AssuredWorkloads
      module V1beta1
        CreateWorkloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.CreateWorkloadRequest").msgclass
        UpdateWorkloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.UpdateWorkloadRequest").msgclass
        RestrictAllowedResourcesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.RestrictAllowedResourcesRequest").msgclass
        RestrictAllowedResourcesRequest::RestrictionType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.RestrictAllowedResourcesRequest.RestrictionType").enummodule
        RestrictAllowedResourcesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.RestrictAllowedResourcesResponse").msgclass
        DeleteWorkloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.DeleteWorkloadRequest").msgclass
        GetWorkloadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.GetWorkloadRequest").msgclass
        AnalyzeWorkloadMoveRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.AnalyzeWorkloadMoveRequest").msgclass
        AnalyzeWorkloadMoveResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.AnalyzeWorkloadMoveResponse").msgclass
        ListWorkloadsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.ListWorkloadsRequest").msgclass
        ListWorkloadsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.ListWorkloadsResponse").msgclass
        Workload = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.Workload").msgclass
        Workload::ResourceInfo = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.Workload.ResourceInfo").msgclass
        Workload::ResourceInfo::ResourceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.Workload.ResourceInfo.ResourceType").enummodule
        Workload::KMSSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.Workload.KMSSettings").msgclass
        Workload::IL4Settings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.Workload.IL4Settings").msgclass
        Workload::CJISSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.Workload.CJISSettings").msgclass
        Workload::FedrampHighSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.Workload.FedrampHighSettings").msgclass
        Workload::FedrampModerateSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.Workload.FedrampModerateSettings").msgclass
        Workload::ResourceSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.Workload.ResourceSettings").msgclass
        Workload::SaaEnrollmentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.Workload.SaaEnrollmentResponse").msgclass
        Workload::SaaEnrollmentResponse::SetupState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.Workload.SaaEnrollmentResponse.SetupState").enummodule
        Workload::SaaEnrollmentResponse::SetupError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.Workload.SaaEnrollmentResponse.SetupError").enummodule
        Workload::ComplianceRegime = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.Workload.ComplianceRegime").enummodule
        Workload::KajEnrollmentState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.Workload.KajEnrollmentState").enummodule
        CreateWorkloadOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.assuredworkloads.v1beta1.CreateWorkloadOperationMetadata").msgclass
      end
    end
  end
end

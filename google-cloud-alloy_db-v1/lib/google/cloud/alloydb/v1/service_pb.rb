# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/alloydb/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/alloydb/v1/resources_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n%google/cloud/alloydb/v1/service.proto\x12\x17google.cloud.alloydb.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\'google/cloud/alloydb/v1/resources.proto\x1a#google/longrunning/operations.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xa9\x01\n\x13ListClustersRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \x12\x1e\x61lloydb.googleapis.com/Cluster\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x14\n\x06\x66ilter\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x16\n\x08order_by\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\"x\n\x14ListClustersResponse\x12\x32\n\x08\x63lusters\x18\x01 \x03(\x0b\x32 .google.cloud.alloydb.v1.Cluster\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\x84\x01\n\x11GetClusterRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \n\x1e\x61lloydb.googleapis.com/Cluster\x12\x38\n\x04view\x18\x02 \x01(\x0e\x32$.google.cloud.alloydb.v1.ClusterViewB\x04\xe2\x41\x01\x01\"\xe2\x01\n\x1d\x43reateSecondaryClusterRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \x12\x1e\x61lloydb.googleapis.com/Cluster\x12\x18\n\ncluster_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x37\n\x07\x63luster\x18\x03 \x01(\x0b\x32 .google.cloud.alloydb.v1.ClusterB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x06 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xd9\x01\n\x14\x43reateClusterRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \x12\x1e\x61lloydb.googleapis.com/Cluster\x12\x18\n\ncluster_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x37\n\x07\x63luster\x18\x03 \x01(\x0b\x32 .google.cloud.alloydb.v1.ClusterB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xda\x01\n\x14UpdateClusterRequest\x12\x35\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x01\x12\x37\n\x07\x63luster\x18\x02 \x01(\x0b\x32 .google.cloud.alloydb.v1.ClusterB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12\x1b\n\rallow_missing\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xad\x01\n\x14\x44\x65leteClusterRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \n\x1e\x61lloydb.googleapis.com/Cluster\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x12\n\x04\x65tag\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12\x13\n\x05\x66orce\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x99\x01\n\x15PromoteClusterRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \n\x1e\x61lloydb.googleapis.com/Cluster\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x12\n\x04\x65tag\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xf9\x02\n\x15RestoreClusterRequest\x12>\n\rbackup_source\x18\x04 \x01(\x0b\x32%.google.cloud.alloydb.v1.BackupSourceH\x00\x12S\n\x18\x63ontinuous_backup_source\x18\x08 \x01(\x0b\x32/.google.cloud.alloydb.v1.ContinuousBackupSourceH\x00\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \x12\x1e\x61lloydb.googleapis.com/Cluster\x12\x18\n\ncluster_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x37\n\x07\x63luster\x18\x03 \x01(\x0b\x32 .google.cloud.alloydb.v1.ClusterB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x06 \x01(\x08\x42\x04\xe2\x41\x01\x01\x42\x08\n\x06source\"\xab\x01\n\x14ListInstancesRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\x12\x1f\x61lloydb.googleapis.com/Instance\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x14\n\x06\x66ilter\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x16\n\x08order_by\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\"{\n\x15ListInstancesResponse\x12\x34\n\tinstances\x18\x01 \x03(\x0b\x32!.google.cloud.alloydb.v1.Instance\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\x81\x01\n\x12GetInstanceRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x33\n\x04view\x18\x02 \x01(\x0e\x32%.google.cloud.alloydb.v1.InstanceView\"\xde\x01\n\x15\x43reateInstanceRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\x12\x1f\x61lloydb.googleapis.com/Instance\x12\x19\n\x0binstance_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x39\n\x08instance\x18\x03 \x01(\x0b\x32!.google.cloud.alloydb.v1.InstanceB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xe7\x01\n\x1e\x43reateSecondaryInstanceRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\x12\x1f\x61lloydb.googleapis.com/Instance\x12\x19\n\x0binstance_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x39\n\x08instance\x18\x03 \x01(\x0b\x32!.google.cloud.alloydb.v1.InstanceB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"p\n\x16\x43reateInstanceRequests\x12V\n\x18\x63reate_instance_requests\x18\x01 \x03(\x0b\x32..google.cloud.alloydb.v1.CreateInstanceRequestB\x04\xe2\x41\x01\x02\"\xba\x01\n\x1b\x42\x61tchCreateInstancesRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\x12\x1f\x61lloydb.googleapis.com/Instance\x12G\n\x08requests\x18\x02 \x01(\x0b\x32/.google.cloud.alloydb.v1.CreateInstanceRequestsB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\"T\n\x1c\x42\x61tchCreateInstancesResponse\x12\x34\n\tinstances\x18\x01 \x03(\x0b\x32!.google.cloud.alloydb.v1.Instance\"\x8d\x02\n\x1c\x42\x61tchCreateInstancesMetadata\x12\x18\n\x10instance_targets\x18\x01 \x03(\t\x12\x66\n\x11instance_statuses\x18\x02 \x03(\x0b\x32K.google.cloud.alloydb.v1.BatchCreateInstancesMetadata.InstanceStatusesEntry\x1ak\n\x15InstanceStatusesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x41\n\x05value\x18\x02 \x01(\x0b\x32\x32.google.cloud.alloydb.v1.BatchCreateInstanceStatus:\x02\x38\x01\"\xd0\x02\n\x19\x42\x61tchCreateInstanceStatus\x12G\n\x05state\x18\x01 \x01(\x0e\x32\x38.google.cloud.alloydb.v1.BatchCreateInstanceStatus.State\x12\x11\n\terror_msg\x18\x02 \x01(\t\x12!\n\x05\x65rror\x18\x04 \x01(\x0b\x32\x12.google.rpc.Status\x12<\n\x04type\x18\x03 \x01(\x0e\x32..google.cloud.alloydb.v1.Instance.InstanceType\"v\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x12\n\x0ePENDING_CREATE\x10\x01\x12\t\n\x05READY\x10\x02\x12\x0c\n\x08\x43REATING\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\n\n\x06\x46\x41ILED\x10\x05\x12\x0f\n\x0bROLLED_BACK\x10\x06\"\xdd\x01\n\x15UpdateInstanceRequest\x12\x35\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x01\x12\x39\n\x08instance\x18\x02 \x01(\x0b\x32!.google.cloud.alloydb.v1.InstanceB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12\x1b\n\rallow_missing\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x9a\x01\n\x15\x44\x65leteInstanceRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x12\n\x04\x65tag\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x88\x01\n\x17\x46\x61iloverInstanceRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x8a\x02\n\x12InjectFaultRequest\x12O\n\nfault_type\x18\x01 \x01(\x0e\x32\x35.google.cloud.alloydb.v1.InjectFaultRequest.FaultTypeB\x04\xe2\x41\x01\x02\x12\x36\n\x04name\x18\x02 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x18\n\nrequest_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\"4\n\tFaultType\x12\x1a\n\x16\x46\x41ULT_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07STOP_VM\x10\x01\"\x87\x01\n\x16RestartInstanceRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x95\x01\n\x12ListBackupsRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe2\x41\x01\x02\xfa\x41\x1f\x12\x1d\x61lloydb.googleapis.com/Backup\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"u\n\x13ListBackupsResponse\x12\x30\n\x07\x62\x61\x63kups\x18\x01 \x03(\x0b\x32\x1f.google.cloud.alloydb.v1.Backup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"H\n\x10GetBackupRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe2\x41\x01\x02\xfa\x41\x1f\n\x1d\x61lloydb.googleapis.com/Backup\"\xd4\x01\n\x13\x43reateBackupRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe2\x41\x01\x02\xfa\x41\x1f\x12\x1d\x61lloydb.googleapis.com/Backup\x12\x17\n\tbackup_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x35\n\x06\x62\x61\x63kup\x18\x03 \x01(\x0b\x32\x1f.google.cloud.alloydb.v1.BackupB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xd7\x01\n\x13UpdateBackupRequest\x12\x35\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x01\x12\x35\n\x06\x62\x61\x63kup\x18\x02 \x01(\x0b\x32\x1f.google.cloud.alloydb.v1.BackupB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12\x1b\n\rallow_missing\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x96\x01\n\x13\x44\x65leteBackupRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe2\x41\x01\x02\xfa\x41\x1f\n\x1d\x61lloydb.googleapis.com/Backup\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12\x12\n\x04\x65tag\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\"\x91\x01\n!ListSupportedDatabaseFlagsRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe2\x41\x01\x02\xfa\x41.\x12,alloydb.googleapis.com/SupportedDatabaseFlag\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x8f\x01\n\"ListSupportedDatabaseFlagsResponse\x12P\n\x18supported_database_flags\x18\x01 \x03(\x0b\x32..google.cloud.alloydb.v1.SupportedDatabaseFlag\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xec\x01\n GenerateClientCertificateRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \n\x1e\x61lloydb.googleapis.com/Cluster\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x36\n\rcert_duration\x18\x04 \x01(\x0b\x32\x19.google.protobuf.DurationB\x04\xe2\x41\x01\x01\x12\x18\n\npublic_key\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12#\n\x15use_metadata_exchange\x18\x06 \x01(\x08\x42\x04\xe2\x41\x01\x01\"_\n!GenerateClientCertificateResponse\x12#\n\x15pem_certificate_chain\x18\x02 \x03(\tB\x04\xe2\x41\x01\x03\x12\x15\n\x07\x63\x61_cert\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\"n\n\x18GetConnectionInfoRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\"\x83\x03\n\x11OperationMetadata\x12\x66\n\x1f\x62\x61tch_create_instances_metadata\x18\x08 \x01(\x0b\x32\x35.google.cloud.alloydb.v1.BatchCreateInstancesMetadataB\x04\xe2\x41\x01\x03H\x00\x12\x35\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x32\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x14\n\x06target\x18\x03 \x01(\tB\x04\xe2\x41\x01\x03\x12\x12\n\x04verb\x18\x04 \x01(\tB\x04\xe2\x41\x01\x03\x12\x1c\n\x0estatus_message\x18\x05 \x01(\tB\x04\xe2\x41\x01\x03\x12$\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x04\xe2\x41\x01\x03\x12\x19\n\x0b\x61pi_version\x18\x07 \x01(\tB\x04\xe2\x41\x01\x03\x42\x12\n\x10request_specific\"\xa9\x01\n\x10ListUsersRequest\x12\x34\n\x06parent\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\x12\x1b\x61lloydb.googleapis.com/User\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x18\n\npage_token\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x14\n\x06\x66ilter\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x16\n\x08order_by\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\"o\n\x11ListUsersResponse\x12,\n\x05users\x18\x01 \x03(\x0b\x32\x1d.google.cloud.alloydb.v1.User\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"D\n\x0eGetUserRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\n\x1b\x61lloydb.googleapis.com/User\"\xca\x01\n\x11\x43reateUserRequest\x12\x34\n\x06parent\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\x12\x1b\x61lloydb.googleapis.com/User\x12\x15\n\x07user_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x31\n\x04user\x18\x03 \x01(\x0b\x32\x1d.google.cloud.alloydb.v1.UserB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xd1\x01\n\x11UpdateUserRequest\x12\x35\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x01\x12\x31\n\x04user\x18\x02 \x01(\x0b\x32\x1d.google.cloud.alloydb.v1.UserB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12\x1b\n\rallow_missing\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"~\n\x11\x44\x65leteUserRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\n\x1b\x61lloydb.googleapis.com/User\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x01\x32\xfa\x31\n\x0c\x41lloyDBAdmin\x12\xaa\x01\n\x0cListClusters\x12,.google.cloud.alloydb.v1.ListClustersRequest\x1a-.google.cloud.alloydb.v1.ListClustersResponse\"=\xda\x41\x06parent\x82\xd3\xe4\x93\x02.\x12,/v1/{parent=projects/*/locations/*}/clusters\x12\x97\x01\n\nGetCluster\x12*.google.cloud.alloydb.v1.GetClusterRequest\x1a .google.cloud.alloydb.v1.Cluster\";\xda\x41\x04name\x82\xd3\xe4\x93\x02.\x12,/v1/{name=projects/*/locations/*/clusters/*}\x12\xd7\x01\n\rCreateCluster\x12-.google.cloud.alloydb.v1.CreateClusterRequest\x1a\x1d.google.longrunning.Operation\"x\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\xda\x41\x19parent,cluster,cluster_id\x82\xd3\xe4\x93\x02\x37\",/v1/{parent=projects/*/locations/*}/clusters:\x07\x63luster\x12\xd9\x01\n\rUpdateCluster\x12-.google.cloud.alloydb.v1.UpdateClusterRequest\x1a\x1d.google.longrunning.Operation\"z\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\xda\x41\x13\x63luster,update_mask\x82\xd3\xe4\x93\x02?24/v1/{cluster.name=projects/*/locations/*/clusters/*}:\x07\x63luster\x12\xc7\x01\n\rDeleteCluster\x12-.google.cloud.alloydb.v1.DeleteClusterRequest\x1a\x1d.google.longrunning.Operation\"h\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02.*,/v1/{name=projects/*/locations/*/clusters/*}\x12\xc6\x01\n\x0ePromoteCluster\x12..google.cloud.alloydb.v1.PromoteClusterRequest\x1a\x1d.google.longrunning.Operation\"e\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x39\"4/v1/{name=projects/*/locations/*/clusters/*}:promote:\x01*\x12\xbf\x01\n\x0eRestoreCluster\x12..google.cloud.alloydb.v1.RestoreClusterRequest\x1a\x1d.google.longrunning.Operation\"^\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02\x39\"4/v1/{parent=projects/*/locations/*}/clusters:restore:\x01*\x12\xfa\x01\n\x16\x43reateSecondaryCluster\x12\x36.google.cloud.alloydb.v1.CreateSecondaryClusterRequest\x1a\x1d.google.longrunning.Operation\"\x88\x01\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\xda\x41\x19parent,cluster,cluster_id\x82\xd3\xe4\x93\x02G\"</v1/{parent=projects/*/locations/*}/clusters:createsecondary:\x07\x63luster\x12\xb9\x01\n\rListInstances\x12-.google.cloud.alloydb.v1.ListInstancesRequest\x1a..google.cloud.alloydb.v1.ListInstancesResponse\"I\xda\x41\x06parent\x82\xd3\xe4\x93\x02:\x12\x38/v1/{parent=projects/*/locations/*/clusters/*}/instances\x12\xa6\x01\n\x0bGetInstance\x12+.google.cloud.alloydb.v1.GetInstanceRequest\x1a!.google.cloud.alloydb.v1.Instance\"G\xda\x41\x04name\x82\xd3\xe4\x93\x02:\x12\x38/v1/{name=projects/*/locations/*/clusters/*/instances/*}\x12\xea\x01\n\x0e\x43reateInstance\x12..google.cloud.alloydb.v1.CreateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x88\x01\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x1bparent,instance,instance_id\x82\xd3\xe4\x93\x02\x44\"8/v1/{parent=projects/*/locations/*/clusters/*}/instances:\x08instance\x12\x8c\x02\n\x17\x43reateSecondaryInstance\x12\x37.google.cloud.alloydb.v1.CreateSecondaryInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x98\x01\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x1bparent,instance,instance_id\x82\xd3\xe4\x93\x02T\"H/v1/{parent=projects/*/locations/*/clusters/*}/instances:createsecondary:\x08instance\x12\xf8\x01\n\x14\x42\x61tchCreateInstances\x12\x34.google.cloud.alloydb.v1.BatchCreateInstancesRequest\x1a\x1d.google.longrunning.Operation\"\x8a\x01\xca\x41\x31\n\x1c\x42\x61tchCreateInstancesResponse\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02P\"D/v1/{parent=projects/*/locations/*/clusters/*}/instances:batchCreate:\x08requests\x12\xec\x01\n\x0eUpdateInstance\x12..google.cloud.alloydb.v1.UpdateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x8a\x01\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x14instance,update_mask\x82\xd3\xe4\x93\x02M2A/v1/{instance.name=projects/*/locations/*/clusters/*/instances/*}:\x08instance\x12\xd5\x01\n\x0e\x44\x65leteInstance\x12..google.cloud.alloydb.v1.DeleteInstanceRequest\x1a\x1d.google.longrunning.Operation\"t\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02:*8/v1/{name=projects/*/locations/*/clusters/*/instances/*}\x12\xd8\x01\n\x10\x46\x61iloverInstance\x12\x30.google.cloud.alloydb.v1.FailoverInstanceRequest\x1a\x1d.google.longrunning.Operation\"s\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x46\"A/v1/{name=projects/*/locations/*/clusters/*/instances/*}:failover:\x01*\x12\xdd\x01\n\x0bInjectFault\x12+.google.cloud.alloydb.v1.InjectFaultRequest\x1a\x1d.google.longrunning.Operation\"\x81\x01\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x0f\x66\x61ult_type,name\x82\xd3\xe4\x93\x02I\"D/v1/{name=projects/*/locations/*/clusters/*/instances/*}:injectFault:\x01*\x12\xd5\x01\n\x0fRestartInstance\x12/.google.cloud.alloydb.v1.RestartInstanceRequest\x1a\x1d.google.longrunning.Operation\"r\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x45\"@/v1/{name=projects/*/locations/*/clusters/*/instances/*}:restart:\x01*\x12\xa6\x01\n\x0bListBackups\x12+.google.cloud.alloydb.v1.ListBackupsRequest\x1a,.google.cloud.alloydb.v1.ListBackupsResponse\"<\xda\x41\x06parent\x82\xd3\xe4\x93\x02-\x12+/v1/{parent=projects/*/locations/*}/backups\x12\x93\x01\n\tGetBackup\x12).google.cloud.alloydb.v1.GetBackupRequest\x1a\x1f.google.cloud.alloydb.v1.Backup\":\xda\x41\x04name\x82\xd3\xe4\x93\x02-\x12+/v1/{name=projects/*/locations/*/backups/*}\x12\xd0\x01\n\x0c\x43reateBackup\x12,.google.cloud.alloydb.v1.CreateBackupRequest\x1a\x1d.google.longrunning.Operation\"s\xca\x41\x1b\n\x06\x42\x61\x63kup\x12\x11OperationMetadata\xda\x41\x17parent,backup,backup_id\x82\xd3\xe4\x93\x02\x35\"+/v1/{parent=projects/*/locations/*}/backups:\x06\x62\x61\x63kup\x12\xd2\x01\n\x0cUpdateBackup\x12,.google.cloud.alloydb.v1.UpdateBackupRequest\x1a\x1d.google.longrunning.Operation\"u\xca\x41\x1b\n\x06\x42\x61\x63kup\x12\x11OperationMetadata\xda\x41\x12\x62\x61\x63kup,update_mask\x82\xd3\xe4\x93\x02<22/v1/{backup.name=projects/*/locations/*/backups/*}:\x06\x62\x61\x63kup\x12\xc4\x01\n\x0c\x44\x65leteBackup\x12,.google.cloud.alloydb.v1.DeleteBackupRequest\x1a\x1d.google.longrunning.Operation\"g\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02-*+/v1/{name=projects/*/locations/*/backups/*}\x12\xe2\x01\n\x1aListSupportedDatabaseFlags\x12:.google.cloud.alloydb.v1.ListSupportedDatabaseFlagsRequest\x1a;.google.cloud.alloydb.v1.ListSupportedDatabaseFlagsResponse\"K\xda\x41\x06parent\x82\xd3\xe4\x93\x02<\x12:/v1/{parent=projects/*/locations/*}/supportedDatabaseFlags\x12\xf0\x01\n\x19GenerateClientCertificate\x12\x39.google.cloud.alloydb.v1.GenerateClientCertificateRequest\x1a:.google.cloud.alloydb.v1.GenerateClientCertificateResponse\"\\\xda\x41\x06parent\x82\xd3\xe4\x93\x02M\"H/v1/{parent=projects/*/locations/*/clusters/*}:generateClientCertificate:\x01*\x12\xcb\x01\n\x11GetConnectionInfo\x12\x31.google.cloud.alloydb.v1.GetConnectionInfoRequest\x1a\'.google.cloud.alloydb.v1.ConnectionInfo\"Z\xda\x41\x06parent\x82\xd3\xe4\x93\x02K\x12I/v1/{parent=projects/*/locations/*/clusters/*/instances/*}/connectionInfo\x12\xa9\x01\n\tListUsers\x12).google.cloud.alloydb.v1.ListUsersRequest\x1a*.google.cloud.alloydb.v1.ListUsersResponse\"E\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x36\x12\x34/v1/{parent=projects/*/locations/*/clusters/*}/users\x12\x96\x01\n\x07GetUser\x12\'.google.cloud.alloydb.v1.GetUserRequest\x1a\x1d.google.cloud.alloydb.v1.User\"C\xda\x41\x04name\x82\xd3\xe4\x93\x02\x36\x12\x34/v1/{name=projects/*/locations/*/clusters/*/users/*}\x12\xb1\x01\n\nCreateUser\x12*.google.cloud.alloydb.v1.CreateUserRequest\x1a\x1d.google.cloud.alloydb.v1.User\"X\xda\x41\x13parent,user,user_id\x82\xd3\xe4\x93\x02<\"4/v1/{parent=projects/*/locations/*/clusters/*}/users:\x04user\x12\xb3\x01\n\nUpdateUser\x12*.google.cloud.alloydb.v1.UpdateUserRequest\x1a\x1d.google.cloud.alloydb.v1.User\"Z\xda\x41\x10user,update_mask\x82\xd3\xe4\x93\x02\x41\x32\x39/v1/{user.name=projects/*/locations/*/clusters/*/users/*}:\x04user\x12\x95\x01\n\nDeleteUser\x12*.google.cloud.alloydb.v1.DeleteUserRequest\x1a\x16.google.protobuf.Empty\"C\xda\x41\x04name\x82\xd3\xe4\x93\x02\x36*4/v1/{name=projects/*/locations/*/clusters/*/users/*}\x1aJ\xca\x41\x16\x61lloydb.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xb5\x01\n\x1b\x63om.google.cloud.alloydb.v1B\x0cServiceProtoP\x01Z5cloud.google.com/go/alloydb/apiv1/alloydbpb;alloydbpb\xaa\x02\x17Google.Cloud.AlloyDb.V1\xca\x02\x17Google\\Cloud\\AlloyDb\\V1\xea\x02\x1aGoogle::Cloud::AlloyDB::V1b\x06proto3"

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
    ["google.cloud.alloydb.v1.Cluster", "google/cloud/alloydb/v1/resources.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
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
    module AlloyDB
      module V1
        ListClustersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.ListClustersRequest").msgclass
        ListClustersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.ListClustersResponse").msgclass
        GetClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.GetClusterRequest").msgclass
        CreateSecondaryClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.CreateSecondaryClusterRequest").msgclass
        CreateClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.CreateClusterRequest").msgclass
        UpdateClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.UpdateClusterRequest").msgclass
        DeleteClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.DeleteClusterRequest").msgclass
        PromoteClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.PromoteClusterRequest").msgclass
        RestoreClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.RestoreClusterRequest").msgclass
        ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.ListInstancesRequest").msgclass
        ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.ListInstancesResponse").msgclass
        GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.GetInstanceRequest").msgclass
        CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.CreateInstanceRequest").msgclass
        CreateSecondaryInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.CreateSecondaryInstanceRequest").msgclass
        CreateInstanceRequests = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.CreateInstanceRequests").msgclass
        BatchCreateInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.BatchCreateInstancesRequest").msgclass
        BatchCreateInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.BatchCreateInstancesResponse").msgclass
        BatchCreateInstancesMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.BatchCreateInstancesMetadata").msgclass
        BatchCreateInstanceStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.BatchCreateInstanceStatus").msgclass
        BatchCreateInstanceStatus::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.BatchCreateInstanceStatus.State").enummodule
        UpdateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.UpdateInstanceRequest").msgclass
        DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.DeleteInstanceRequest").msgclass
        FailoverInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.FailoverInstanceRequest").msgclass
        InjectFaultRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.InjectFaultRequest").msgclass
        InjectFaultRequest::FaultType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.InjectFaultRequest.FaultType").enummodule
        RestartInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.RestartInstanceRequest").msgclass
        ListBackupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.ListBackupsRequest").msgclass
        ListBackupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.ListBackupsResponse").msgclass
        GetBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.GetBackupRequest").msgclass
        CreateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.CreateBackupRequest").msgclass
        UpdateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.UpdateBackupRequest").msgclass
        DeleteBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.DeleteBackupRequest").msgclass
        ListSupportedDatabaseFlagsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.ListSupportedDatabaseFlagsRequest").msgclass
        ListSupportedDatabaseFlagsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.ListSupportedDatabaseFlagsResponse").msgclass
        GenerateClientCertificateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.GenerateClientCertificateRequest").msgclass
        GenerateClientCertificateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.GenerateClientCertificateResponse").msgclass
        GetConnectionInfoRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.GetConnectionInfoRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.OperationMetadata").msgclass
        ListUsersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.ListUsersRequest").msgclass
        ListUsersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.ListUsersResponse").msgclass
        GetUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.GetUserRequest").msgclass
        CreateUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.CreateUserRequest").msgclass
        UpdateUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.UpdateUserRequest").msgclass
        DeleteUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1.DeleteUserRequest").msgclass
      end
    end
  end
end

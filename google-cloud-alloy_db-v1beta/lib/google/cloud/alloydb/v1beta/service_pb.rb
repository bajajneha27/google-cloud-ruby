# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/alloydb/v1beta/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/alloydb/v1beta/resources_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n)google/cloud/alloydb/v1beta/service.proto\x12\x1bgoogle.cloud.alloydb.v1beta\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a+google/cloud/alloydb/v1beta/resources.proto\x1a#google/longrunning/operations.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xa5\x01\n\x13ListClustersRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \x12\x1e\x61lloydb.googleapis.com/Cluster\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"|\n\x14ListClustersResponse\x12\x36\n\x08\x63lusters\x18\x01 \x03(\x0b\x32$.google.cloud.alloydb.v1beta.Cluster\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\x86\x01\n\x11GetClusterRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x61lloydb.googleapis.com/Cluster\x12;\n\x04view\x18\x02 \x01(\x0e\x32(.google.cloud.alloydb.v1beta.ClusterViewB\x03\xe0\x41\x01\"\xe1\x01\n\x1d\x43reateSecondaryClusterRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \x12\x1e\x61lloydb.googleapis.com/Cluster\x12\x17\n\ncluster_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12:\n\x07\x63luster\x18\x03 \x01(\x0b\x32$.google.cloud.alloydb.v1beta.ClusterB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x06 \x01(\x08\x42\x03\xe0\x41\x01\"\xd8\x01\n\x14\x43reateClusterRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \x12\x1e\x61lloydb.googleapis.com/Cluster\x12\x17\n\ncluster_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12:\n\x07\x63luster\x18\x03 \x01(\x0b\x32$.google.cloud.alloydb.v1beta.ClusterB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\"\xd9\x01\n\x14UpdateClusterRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x12:\n\x07\x63luster\x18\x02 \x01(\x0b\x32$.google.cloud.alloydb.v1beta.ClusterB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\x12\x1a\n\rallow_missing\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\"\xa8\x01\n\x14\x44\x65leteClusterRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x61lloydb.googleapis.com/Cluster\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x11\n\x04\x65tag\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\x12\x12\n\x05\x66orce\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\"\x95\x01\n\x15PromoteClusterRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x61lloydb.googleapis.com/Cluster\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x11\n\x04\x65tag\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\"\x80\x03\n\x15RestoreClusterRequest\x12\x42\n\rbackup_source\x18\x04 \x01(\x0b\x32).google.cloud.alloydb.v1beta.BackupSourceH\x00\x12W\n\x18\x63ontinuous_backup_source\x18\x08 \x01(\x0b\x32\x33.google.cloud.alloydb.v1beta.ContinuousBackupSourceH\x00\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \x12\x1e\x61lloydb.googleapis.com/Cluster\x12\x17\n\ncluster_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12:\n\x07\x63luster\x18\x03 \x01(\x0b\x32$.google.cloud.alloydb.v1beta.ClusterB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x06 \x01(\x08\x42\x03\xe0\x41\x01\x42\x08\n\x06source\"\xa7\x01\n\x14ListInstancesRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\x12\x1f\x61lloydb.googleapis.com/Instance\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"\x7f\n\x15ListInstancesResponse\x12\x38\n\tinstances\x18\x01 \x03(\x0b\x32%.google.cloud.alloydb.v1beta.Instance\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\x84\x01\n\x12GetInstanceRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x37\n\x04view\x18\x02 \x01(\x0e\x32).google.cloud.alloydb.v1beta.InstanceView\"\xdd\x01\n\x15\x43reateInstanceRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\x12\x1f\x61lloydb.googleapis.com/Instance\x12\x18\n\x0binstance_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12<\n\x08instance\x18\x03 \x01(\x0b\x32%.google.cloud.alloydb.v1beta.InstanceB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\"\xe6\x01\n\x1e\x43reateSecondaryInstanceRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\x12\x1f\x61lloydb.googleapis.com/Instance\x12\x18\n\x0binstance_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12<\n\x08instance\x18\x03 \x01(\x0b\x32%.google.cloud.alloydb.v1beta.InstanceB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\"s\n\x16\x43reateInstanceRequests\x12Y\n\x18\x63reate_instance_requests\x18\x01 \x03(\x0b\x32\x32.google.cloud.alloydb.v1beta.CreateInstanceRequestB\x03\xe0\x41\x02\"\xbb\x01\n\x1b\x42\x61tchCreateInstancesRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\x12\x1f\x61lloydb.googleapis.com/Instance\x12J\n\x08requests\x18\x02 \x01(\x0b\x32\x33.google.cloud.alloydb.v1beta.CreateInstanceRequestsB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\"X\n\x1c\x42\x61tchCreateInstancesResponse\x12\x38\n\tinstances\x18\x01 \x03(\x0b\x32%.google.cloud.alloydb.v1beta.Instance\"\x95\x02\n\x1c\x42\x61tchCreateInstancesMetadata\x12\x18\n\x10instance_targets\x18\x01 \x03(\t\x12j\n\x11instance_statuses\x18\x02 \x03(\x0b\x32O.google.cloud.alloydb.v1beta.BatchCreateInstancesMetadata.InstanceStatusesEntry\x1ao\n\x15InstanceStatusesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x45\n\x05value\x18\x02 \x01(\x0b\x32\x36.google.cloud.alloydb.v1beta.BatchCreateInstanceStatus:\x02\x38\x01\"\xd8\x02\n\x19\x42\x61tchCreateInstanceStatus\x12K\n\x05state\x18\x01 \x01(\x0e\x32<.google.cloud.alloydb.v1beta.BatchCreateInstanceStatus.State\x12\x11\n\terror_msg\x18\x02 \x01(\t\x12!\n\x05\x65rror\x18\x04 \x01(\x0b\x32\x12.google.rpc.Status\x12@\n\x04type\x18\x03 \x01(\x0e\x32\x32.google.cloud.alloydb.v1beta.Instance.InstanceType\"v\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x12\n\x0ePENDING_CREATE\x10\x01\x12\t\n\x05READY\x10\x02\x12\x0c\n\x08\x43REATING\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\n\n\x06\x46\x41ILED\x10\x05\x12\x0f\n\x0bROLLED_BACK\x10\x06\"\xdc\x01\n\x15UpdateInstanceRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x12<\n\x08instance\x18\x02 \x01(\x0b\x32%.google.cloud.alloydb.v1beta.InstanceB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\x12\x1a\n\rallow_missing\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\"\x96\x01\n\x15\x44\x65leteInstanceRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x11\n\x04\x65tag\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\"\x85\x01\n\x17\x46\x61iloverInstanceRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\"\x8a\x02\n\x12InjectFaultRequest\x12R\n\nfault_type\x18\x01 \x01(\x0e\x32\x39.google.cloud.alloydb.v1beta.InjectFaultRequest.FaultTypeB\x03\xe0\x41\x02\x12\x35\n\x04name\x18\x02 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\"4\n\tFaultType\x12\x1a\n\x16\x46\x41ULT_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07STOP_VM\x10\x01\"\x84\x01\n\x16RestartInstanceRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\"\x94\x01\n\x12ListBackupsRequest\x12\x35\n\x06parent\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\x12\x1d\x61lloydb.googleapis.com/Backup\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"y\n\x13ListBackupsResponse\x12\x34\n\x07\x62\x61\x63kups\x18\x01 \x03(\x0b\x32#.google.cloud.alloydb.v1beta.Backup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"G\n\x10GetBackupRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1d\x61lloydb.googleapis.com/Backup\"\xd3\x01\n\x13\x43reateBackupRequest\x12\x35\n\x06parent\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\x12\x1d\x61lloydb.googleapis.com/Backup\x12\x16\n\tbackup_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x38\n\x06\x62\x61\x63kup\x18\x03 \x01(\x0b\x32#.google.cloud.alloydb.v1beta.BackupB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\"\xd6\x01\n\x13UpdateBackupRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x12\x38\n\x06\x62\x61\x63kup\x18\x02 \x01(\x0b\x32#.google.cloud.alloydb.v1beta.BackupB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\x12\x1a\n\rallow_missing\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\"\x92\x01\n\x13\x44\x65leteBackupRequest\x12\x33\n\x04name\x18\x01 \x01(\tB%\xe0\x41\x02\xfa\x41\x1f\n\x1d\x61lloydb.googleapis.com/Backup\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\x12\x11\n\x04\x65tag\x18\x04 \x01(\tB\x03\xe0\x41\x01\"\x90\x01\n!ListSupportedDatabaseFlagsRequest\x12\x44\n\x06parent\x18\x01 \x01(\tB4\xe0\x41\x02\xfa\x41.\x12,alloydb.googleapis.com/SupportedDatabaseFlag\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x93\x01\n\"ListSupportedDatabaseFlagsResponse\x12T\n\x18supported_database_flags\x18\x01 \x03(\x0b\x32\x32.google.cloud.alloydb.v1beta.SupportedDatabaseFlag\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xff\x01\n GenerateClientCertificateRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe0\x41\x02\xfa\x41 \n\x1e\x61lloydb.googleapis.com/Cluster\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x16\n\x07pem_csr\x18\x03 \x01(\tB\x05\x18\x01\xe0\x41\x01\x12\x35\n\rcert_duration\x18\x04 \x01(\x0b\x32\x19.google.protobuf.DurationB\x03\xe0\x41\x01\x12\x17\n\npublic_key\x18\x05 \x01(\tB\x03\xe0\x41\x01\x12\"\n\x15use_metadata_exchange\x18\x06 \x01(\x08\x42\x03\xe0\x41\x01\"{\n!GenerateClientCertificateResponse\x12\x1c\n\x0fpem_certificate\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\"\n\x15pem_certificate_chain\x18\x02 \x03(\tB\x03\xe0\x41\x03\x12\x14\n\x07\x63\x61_cert\x18\x03 \x01(\tB\x03\xe0\x41\x01\"l\n\x18GetConnectionInfoRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe0\x41\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\"\xff\x02\n\x11OperationMetadata\x12i\n\x1f\x62\x61tch_create_instances_metadata\x18\x08 \x01(\x0b\x32\x39.google.cloud.alloydb.v1beta.BatchCreateInstancesMetadataB\x03\xe0\x41\x03H\x00\x12\x34\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x31\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x03\xe0\x41\x03\x12\x13\n\x06target\x18\x03 \x01(\tB\x03\xe0\x41\x03\x12\x11\n\x04verb\x18\x04 \x01(\tB\x03\xe0\x41\x03\x12\x1b\n\x0estatus_message\x18\x05 \x01(\tB\x03\xe0\x41\x03\x12#\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x03\xe0\x41\x03\x12\x18\n\x0b\x61pi_version\x18\x07 \x01(\tB\x03\xe0\x41\x03\x42\x12\n\x10request_specific\"\xa4\x01\n\x10ListUsersRequest\x12\x33\n\x06parent\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\x12\x1b\x61lloydb.googleapis.com/User\x12\x16\n\tpage_size\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\x12\x17\n\npage_token\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x13\n\x06\x66ilter\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x15\n\x08order_by\x18\x05 \x01(\tB\x03\xe0\x41\x01\"s\n\x11ListUsersResponse\x12\x30\n\x05users\x18\x01 \x03(\x0b\x32!.google.cloud.alloydb.v1beta.User\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"C\n\x0eGetUserRequest\x12\x31\n\x04name\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\n\x1b\x61lloydb.googleapis.com/User\"\xc9\x01\n\x11\x43reateUserRequest\x12\x33\n\x06parent\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\x12\x1b\x61lloydb.googleapis.com/User\x12\x14\n\x07user_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x34\n\x04user\x18\x03 \x01(\x0b\x32!.google.cloud.alloydb.v1beta.UserB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x04 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\"\xd0\x01\n\x11UpdateUserRequest\x12\x34\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\x12\x34\n\x04user\x18\x02 \x01(\x0b\x32!.google.cloud.alloydb.v1beta.UserB\x03\xe0\x41\x02\x12\x17\n\nrequest_id\x18\x03 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x04 \x01(\x08\x42\x03\xe0\x41\x01\x12\x1a\n\rallow_missing\x18\x05 \x01(\x08\x42\x03\xe0\x41\x01\"{\n\x11\x44\x65leteUserRequest\x12\x31\n\x04name\x18\x01 \x01(\tB#\xe0\x41\x02\xfa\x41\x1d\n\x1b\x61lloydb.googleapis.com/User\x12\x17\n\nrequest_id\x18\x02 \x01(\tB\x03\xe0\x41\x01\x12\x1a\n\rvalidate_only\x18\x03 \x01(\x08\x42\x03\xe0\x41\x01\x32\xa6\x34\n\x0c\x41lloyDBAdmin\x12\xb6\x01\n\x0cListClusters\x12\x30.google.cloud.alloydb.v1beta.ListClustersRequest\x1a\x31.google.cloud.alloydb.v1beta.ListClustersResponse\"A\x82\xd3\xe4\x93\x02\x32\x12\x30/v1beta/{parent=projects/*/locations/*}/clusters\xda\x41\x06parent\x12\xa3\x01\n\nGetCluster\x12..google.cloud.alloydb.v1beta.GetClusterRequest\x1a$.google.cloud.alloydb.v1beta.Cluster\"?\x82\xd3\xe4\x93\x02\x32\x12\x30/v1beta/{name=projects/*/locations/*/clusters/*}\xda\x41\x04name\x12\xdf\x01\n\rCreateCluster\x12\x31.google.cloud.alloydb.v1beta.CreateClusterRequest\x1a\x1d.google.longrunning.Operation\"|\x82\xd3\xe4\x93\x02;\"0/v1beta/{parent=projects/*/locations/*}/clusters:\x07\x63luster\xda\x41\x19parent,cluster,cluster_id\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\x12\xe1\x01\n\rUpdateCluster\x12\x31.google.cloud.alloydb.v1beta.UpdateClusterRequest\x1a\x1d.google.longrunning.Operation\"~\x82\xd3\xe4\x93\x02\x43\x32\x38/v1beta/{cluster.name=projects/*/locations/*/clusters/*}:\x07\x63luster\xda\x41\x13\x63luster,update_mask\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\x12\xcf\x01\n\rDeleteCluster\x12\x31.google.cloud.alloydb.v1beta.DeleteClusterRequest\x1a\x1d.google.longrunning.Operation\"l\x82\xd3\xe4\x93\x02\x32*0/v1beta/{name=projects/*/locations/*/clusters/*}\xda\x41\x04name\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\x12\xce\x01\n\x0ePromoteCluster\x12\x32.google.cloud.alloydb.v1beta.PromoteClusterRequest\x1a\x1d.google.longrunning.Operation\"i\x82\xd3\xe4\x93\x02=\"8/v1beta/{name=projects/*/locations/*/clusters/*}:promote:\x01*\xda\x41\x04name\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\x12\xc7\x01\n\x0eRestoreCluster\x12\x32.google.cloud.alloydb.v1beta.RestoreClusterRequest\x1a\x1d.google.longrunning.Operation\"b\x82\xd3\xe4\x93\x02=\"8/v1beta/{parent=projects/*/locations/*}/clusters:restore:\x01*\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\x12\x82\x02\n\x16\x43reateSecondaryCluster\x12:.google.cloud.alloydb.v1beta.CreateSecondaryClusterRequest\x1a\x1d.google.longrunning.Operation\"\x8c\x01\x82\xd3\xe4\x93\x02K\"@/v1beta/{parent=projects/*/locations/*}/clusters:createsecondary:\x07\x63luster\xda\x41\x19parent,cluster,cluster_id\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\x12\xc5\x01\n\rListInstances\x12\x31.google.cloud.alloydb.v1beta.ListInstancesRequest\x1a\x32.google.cloud.alloydb.v1beta.ListInstancesResponse\"M\x82\xd3\xe4\x93\x02>\x12</v1beta/{parent=projects/*/locations/*/clusters/*}/instances\xda\x41\x06parent\x12\xb2\x01\n\x0bGetInstance\x12/.google.cloud.alloydb.v1beta.GetInstanceRequest\x1a%.google.cloud.alloydb.v1beta.Instance\"K\x82\xd3\xe4\x93\x02>\x12</v1beta/{name=projects/*/locations/*/clusters/*/instances/*}\xda\x41\x04name\x12\xf2\x01\n\x0e\x43reateInstance\x12\x32.google.cloud.alloydb.v1beta.CreateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x8c\x01\x82\xd3\xe4\x93\x02H\"</v1beta/{parent=projects/*/locations/*/clusters/*}/instances:\x08instance\xda\x41\x1bparent,instance,instance_id\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x12\x94\x02\n\x17\x43reateSecondaryInstance\x12;.google.cloud.alloydb.v1beta.CreateSecondaryInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x9c\x01\x82\xd3\xe4\x93\x02X\"L/v1beta/{parent=projects/*/locations/*/clusters/*}/instances:createsecondary:\x08instance\xda\x41\x1bparent,instance,instance_id\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x12\x80\x02\n\x14\x42\x61tchCreateInstances\x12\x38.google.cloud.alloydb.v1beta.BatchCreateInstancesRequest\x1a\x1d.google.longrunning.Operation\"\x8e\x01\x82\xd3\xe4\x93\x02T\"H/v1beta/{parent=projects/*/locations/*/clusters/*}/instances:batchCreate:\x08requests\xca\x41\x31\n\x1c\x42\x61tchCreateInstancesResponse\x12\x11OperationMetadata\x12\xf4\x01\n\x0eUpdateInstance\x12\x32.google.cloud.alloydb.v1beta.UpdateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x8e\x01\x82\xd3\xe4\x93\x02Q2E/v1beta/{instance.name=projects/*/locations/*/clusters/*/instances/*}:\x08instance\xda\x41\x14instance,update_mask\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x12\xdd\x01\n\x0e\x44\x65leteInstance\x12\x32.google.cloud.alloydb.v1beta.DeleteInstanceRequest\x1a\x1d.google.longrunning.Operation\"x\x82\xd3\xe4\x93\x02>*</v1beta/{name=projects/*/locations/*/clusters/*/instances/*}\xda\x41\x04name\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\x12\xe0\x01\n\x10\x46\x61iloverInstance\x12\x34.google.cloud.alloydb.v1beta.FailoverInstanceRequest\x1a\x1d.google.longrunning.Operation\"w\x82\xd3\xe4\x93\x02J\"E/v1beta/{name=projects/*/locations/*/clusters/*/instances/*}:failover:\x01*\xda\x41\x04name\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x12\xe5\x01\n\x0bInjectFault\x12/.google.cloud.alloydb.v1beta.InjectFaultRequest\x1a\x1d.google.longrunning.Operation\"\x85\x01\x82\xd3\xe4\x93\x02M\"H/v1beta/{name=projects/*/locations/*/clusters/*/instances/*}:injectFault:\x01*\xda\x41\x0f\x66\x61ult_type,name\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x12\xdd\x01\n\x0fRestartInstance\x12\x33.google.cloud.alloydb.v1beta.RestartInstanceRequest\x1a\x1d.google.longrunning.Operation\"v\x82\xd3\xe4\x93\x02I\"D/v1beta/{name=projects/*/locations/*/clusters/*/instances/*}:restart:\x01*\xda\x41\x04name\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\x12\xb2\x01\n\x0bListBackups\x12/.google.cloud.alloydb.v1beta.ListBackupsRequest\x1a\x30.google.cloud.alloydb.v1beta.ListBackupsResponse\"@\x82\xd3\xe4\x93\x02\x31\x12//v1beta/{parent=projects/*/locations/*}/backups\xda\x41\x06parent\x12\x9f\x01\n\tGetBackup\x12-.google.cloud.alloydb.v1beta.GetBackupRequest\x1a#.google.cloud.alloydb.v1beta.Backup\">\x82\xd3\xe4\x93\x02\x31\x12//v1beta/{name=projects/*/locations/*/backups/*}\xda\x41\x04name\x12\xd8\x01\n\x0c\x43reateBackup\x12\x30.google.cloud.alloydb.v1beta.CreateBackupRequest\x1a\x1d.google.longrunning.Operation\"w\x82\xd3\xe4\x93\x02\x39\"//v1beta/{parent=projects/*/locations/*}/backups:\x06\x62\x61\x63kup\xda\x41\x17parent,backup,backup_id\xca\x41\x1b\n\x06\x42\x61\x63kup\x12\x11OperationMetadata\x12\xda\x01\n\x0cUpdateBackup\x12\x30.google.cloud.alloydb.v1beta.UpdateBackupRequest\x1a\x1d.google.longrunning.Operation\"y\x82\xd3\xe4\x93\x02@26/v1beta/{backup.name=projects/*/locations/*/backups/*}:\x06\x62\x61\x63kup\xda\x41\x12\x62\x61\x63kup,update_mask\xca\x41\x1b\n\x06\x42\x61\x63kup\x12\x11OperationMetadata\x12\xcc\x01\n\x0c\x44\x65leteBackup\x12\x30.google.cloud.alloydb.v1beta.DeleteBackupRequest\x1a\x1d.google.longrunning.Operation\"k\x82\xd3\xe4\x93\x02\x31*//v1beta/{name=projects/*/locations/*/backups/*}\xda\x41\x04name\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\x12\xee\x01\n\x1aListSupportedDatabaseFlags\x12>.google.cloud.alloydb.v1beta.ListSupportedDatabaseFlagsRequest\x1a?.google.cloud.alloydb.v1beta.ListSupportedDatabaseFlagsResponse\"O\x82\xd3\xe4\x93\x02@\x12>/v1beta/{parent=projects/*/locations/*}/supportedDatabaseFlags\xda\x41\x06parent\x12\xfc\x01\n\x19GenerateClientCertificate\x12=.google.cloud.alloydb.v1beta.GenerateClientCertificateRequest\x1a>.google.cloud.alloydb.v1beta.GenerateClientCertificateResponse\"`\x82\xd3\xe4\x93\x02Q\"L/v1beta/{parent=projects/*/locations/*/clusters/*}:generateClientCertificate:\x01*\xda\x41\x06parent\x12\xd7\x01\n\x11GetConnectionInfo\x12\x35.google.cloud.alloydb.v1beta.GetConnectionInfoRequest\x1a+.google.cloud.alloydb.v1beta.ConnectionInfo\"^\x82\xd3\xe4\x93\x02O\x12M/v1beta/{parent=projects/*/locations/*/clusters/*/instances/*}/connectionInfo\xda\x41\x06parent\x12\xb5\x01\n\tListUsers\x12-.google.cloud.alloydb.v1beta.ListUsersRequest\x1a..google.cloud.alloydb.v1beta.ListUsersResponse\"I\x82\xd3\xe4\x93\x02:\x12\x38/v1beta/{parent=projects/*/locations/*/clusters/*}/users\xda\x41\x06parent\x12\xa2\x01\n\x07GetUser\x12+.google.cloud.alloydb.v1beta.GetUserRequest\x1a!.google.cloud.alloydb.v1beta.User\"G\x82\xd3\xe4\x93\x02:\x12\x38/v1beta/{name=projects/*/locations/*/clusters/*/users/*}\xda\x41\x04name\x12\xbd\x01\n\nCreateUser\x12..google.cloud.alloydb.v1beta.CreateUserRequest\x1a!.google.cloud.alloydb.v1beta.User\"\\\x82\xd3\xe4\x93\x02@\"8/v1beta/{parent=projects/*/locations/*/clusters/*}/users:\x04user\xda\x41\x13parent,user,user_id\x12\xbf\x01\n\nUpdateUser\x12..google.cloud.alloydb.v1beta.UpdateUserRequest\x1a!.google.cloud.alloydb.v1beta.User\"^\x82\xd3\xe4\x93\x02\x45\x32=/v1beta/{user.name=projects/*/locations/*/clusters/*/users/*}:\x04user\xda\x41\x10user,update_mask\x12\x9d\x01\n\nDeleteUser\x12..google.cloud.alloydb.v1beta.DeleteUserRequest\x1a\x16.google.protobuf.Empty\"G\x82\xd3\xe4\x93\x02:*8/v1beta/{name=projects/*/locations/*/clusters/*/users/*}\xda\x41\x04name\x1aJ\xca\x41\x16\x61lloydb.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xc9\x01\n\x1f\x63om.google.cloud.alloydb.v1betaB\x0cServiceProtoP\x01Z9cloud.google.com/go/alloydb/apiv1beta/alloydbpb;alloydbpb\xaa\x02\x1bGoogle.Cloud.AlloyDb.V1Beta\xca\x02\x1bGoogle\\Cloud\\AlloyDb\\V1beta\xea\x02\x1eGoogle::Cloud::AlloyDB::V1betab\x06proto3"

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
    ["google.cloud.alloydb.v1beta.Cluster", "google/cloud/alloydb/v1beta/resources.proto"],
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
      module V1beta
        ListClustersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.ListClustersRequest").msgclass
        ListClustersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.ListClustersResponse").msgclass
        GetClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.GetClusterRequest").msgclass
        CreateSecondaryClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.CreateSecondaryClusterRequest").msgclass
        CreateClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.CreateClusterRequest").msgclass
        UpdateClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.UpdateClusterRequest").msgclass
        DeleteClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.DeleteClusterRequest").msgclass
        PromoteClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.PromoteClusterRequest").msgclass
        RestoreClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.RestoreClusterRequest").msgclass
        ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.ListInstancesRequest").msgclass
        ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.ListInstancesResponse").msgclass
        GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.GetInstanceRequest").msgclass
        CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.CreateInstanceRequest").msgclass
        CreateSecondaryInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.CreateSecondaryInstanceRequest").msgclass
        CreateInstanceRequests = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.CreateInstanceRequests").msgclass
        BatchCreateInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.BatchCreateInstancesRequest").msgclass
        BatchCreateInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.BatchCreateInstancesResponse").msgclass
        BatchCreateInstancesMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.BatchCreateInstancesMetadata").msgclass
        BatchCreateInstanceStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.BatchCreateInstanceStatus").msgclass
        BatchCreateInstanceStatus::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.BatchCreateInstanceStatus.State").enummodule
        UpdateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.UpdateInstanceRequest").msgclass
        DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.DeleteInstanceRequest").msgclass
        FailoverInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.FailoverInstanceRequest").msgclass
        InjectFaultRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.InjectFaultRequest").msgclass
        InjectFaultRequest::FaultType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.InjectFaultRequest.FaultType").enummodule
        RestartInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.RestartInstanceRequest").msgclass
        ListBackupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.ListBackupsRequest").msgclass
        ListBackupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.ListBackupsResponse").msgclass
        GetBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.GetBackupRequest").msgclass
        CreateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.CreateBackupRequest").msgclass
        UpdateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.UpdateBackupRequest").msgclass
        DeleteBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.DeleteBackupRequest").msgclass
        ListSupportedDatabaseFlagsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.ListSupportedDatabaseFlagsRequest").msgclass
        ListSupportedDatabaseFlagsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.ListSupportedDatabaseFlagsResponse").msgclass
        GenerateClientCertificateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.GenerateClientCertificateRequest").msgclass
        GenerateClientCertificateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.GenerateClientCertificateResponse").msgclass
        GetConnectionInfoRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.GetConnectionInfoRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.OperationMetadata").msgclass
        ListUsersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.ListUsersRequest").msgclass
        ListUsersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.ListUsersResponse").msgclass
        GetUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.GetUserRequest").msgclass
        CreateUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.CreateUserRequest").msgclass
        UpdateUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.UpdateUserRequest").msgclass
        DeleteUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1beta.DeleteUserRequest").msgclass
      end
    end
  end
end

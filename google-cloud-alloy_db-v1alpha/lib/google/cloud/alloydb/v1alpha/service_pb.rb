# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/alloydb/v1alpha/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/alloydb/v1alpha/resources_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n*google/cloud/alloydb/v1alpha/service.proto\x12\x1cgoogle.cloud.alloydb.v1alpha\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a,google/cloud/alloydb/v1alpha/resources.proto\x1a#google/longrunning/operations.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xa9\x01\n\x13ListClustersRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \x12\x1e\x61lloydb.googleapis.com/Cluster\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x14\n\x06\x66ilter\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x16\n\x08order_by\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\"}\n\x14ListClustersResponse\x12\x37\n\x08\x63lusters\x18\x01 \x03(\x0b\x32%.google.cloud.alloydb.v1alpha.Cluster\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\x89\x01\n\x11GetClusterRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \n\x1e\x61lloydb.googleapis.com/Cluster\x12=\n\x04view\x18\x02 \x01(\x0e\x32).google.cloud.alloydb.v1alpha.ClusterViewB\x04\xe2\x41\x01\x01\"\xe7\x01\n\x1d\x43reateSecondaryClusterRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \x12\x1e\x61lloydb.googleapis.com/Cluster\x12\x18\n\ncluster_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12<\n\x07\x63luster\x18\x03 \x01(\x0b\x32%.google.cloud.alloydb.v1alpha.ClusterB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x06 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xde\x01\n\x14\x43reateClusterRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \x12\x1e\x61lloydb.googleapis.com/Cluster\x12\x18\n\ncluster_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12<\n\x07\x63luster\x18\x03 \x01(\x0b\x32%.google.cloud.alloydb.v1alpha.ClusterB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xdf\x01\n\x14UpdateClusterRequest\x12\x35\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x01\x12<\n\x07\x63luster\x18\x02 \x01(\x0b\x32%.google.cloud.alloydb.v1alpha.ClusterB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12\x1b\n\rallow_missing\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xad\x01\n\x14\x44\x65leteClusterRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \n\x1e\x61lloydb.googleapis.com/Cluster\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x12\n\x04\x65tag\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12\x13\n\x05\x66orce\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x99\x01\n\x15PromoteClusterRequest\x12\x35\n\x04name\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \n\x1e\x61lloydb.googleapis.com/Cluster\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x12\n\x04\x65tag\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x88\x03\n\x15RestoreClusterRequest\x12\x43\n\rbackup_source\x18\x04 \x01(\x0b\x32*.google.cloud.alloydb.v1alpha.BackupSourceH\x00\x12X\n\x18\x63ontinuous_backup_source\x18\x08 \x01(\x0b\x32\x34.google.cloud.alloydb.v1alpha.ContinuousBackupSourceH\x00\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \x12\x1e\x61lloydb.googleapis.com/Cluster\x12\x18\n\ncluster_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12<\n\x07\x63luster\x18\x03 \x01(\x0b\x32%.google.cloud.alloydb.v1alpha.ClusterB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x06 \x01(\x08\x42\x04\xe2\x41\x01\x01\x42\x08\n\x06source\"\xab\x01\n\x14ListInstancesRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\x12\x1f\x61lloydb.googleapis.com/Instance\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x14\n\x06\x66ilter\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x16\n\x08order_by\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\"\x80\x01\n\x15ListInstancesResponse\x12\x39\n\tinstances\x18\x01 \x03(\x0b\x32&.google.cloud.alloydb.v1alpha.Instance\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"\x86\x01\n\x12GetInstanceRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x38\n\x04view\x18\x02 \x01(\x0e\x32*.google.cloud.alloydb.v1alpha.InstanceView\"\xe3\x01\n\x15\x43reateInstanceRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\x12\x1f\x61lloydb.googleapis.com/Instance\x12\x19\n\x0binstance_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12>\n\x08instance\x18\x03 \x01(\x0b\x32&.google.cloud.alloydb.v1alpha.InstanceB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xec\x01\n\x1e\x43reateSecondaryInstanceRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\x12\x1f\x61lloydb.googleapis.com/Instance\x12\x19\n\x0binstance_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12>\n\x08instance\x18\x03 \x01(\x0b\x32&.google.cloud.alloydb.v1alpha.InstanceB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"u\n\x16\x43reateInstanceRequests\x12[\n\x18\x63reate_instance_requests\x18\x01 \x03(\x0b\x32\x33.google.cloud.alloydb.v1alpha.CreateInstanceRequestB\x04\xe2\x41\x01\x02\"\xbf\x01\n\x1b\x42\x61tchCreateInstancesRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\x12\x1f\x61lloydb.googleapis.com/Instance\x12L\n\x08requests\x18\x02 \x01(\x0b\x32\x34.google.cloud.alloydb.v1alpha.CreateInstanceRequestsB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\"Y\n\x1c\x42\x61tchCreateInstancesResponse\x12\x39\n\tinstances\x18\x01 \x03(\x0b\x32&.google.cloud.alloydb.v1alpha.Instance\"\x97\x02\n\x1c\x42\x61tchCreateInstancesMetadata\x12\x18\n\x10instance_targets\x18\x01 \x03(\t\x12k\n\x11instance_statuses\x18\x02 \x03(\x0b\x32P.google.cloud.alloydb.v1alpha.BatchCreateInstancesMetadata.InstanceStatusesEntry\x1ap\n\x15InstanceStatusesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x46\n\x05value\x18\x02 \x01(\x0b\x32\x37.google.cloud.alloydb.v1alpha.BatchCreateInstanceStatus:\x02\x38\x01\"\xda\x02\n\x19\x42\x61tchCreateInstanceStatus\x12L\n\x05state\x18\x01 \x01(\x0e\x32=.google.cloud.alloydb.v1alpha.BatchCreateInstanceStatus.State\x12\x11\n\terror_msg\x18\x02 \x01(\t\x12!\n\x05\x65rror\x18\x04 \x01(\x0b\x32\x12.google.rpc.Status\x12\x41\n\x04type\x18\x03 \x01(\x0e\x32\x33.google.cloud.alloydb.v1alpha.Instance.InstanceType\"v\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x12\n\x0ePENDING_CREATE\x10\x01\x12\t\n\x05READY\x10\x02\x12\x0c\n\x08\x43REATING\x10\x03\x12\x0c\n\x08\x44\x45LETING\x10\x04\x12\n\n\x06\x46\x41ILED\x10\x05\x12\x0f\n\x0bROLLED_BACK\x10\x06\"\xe2\x01\n\x15UpdateInstanceRequest\x12\x35\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x01\x12>\n\x08instance\x18\x02 \x01(\x0b\x32&.google.cloud.alloydb.v1alpha.InstanceB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12\x1b\n\rallow_missing\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x9a\x01\n\x15\x44\x65leteInstanceRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x12\n\x04\x65tag\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x88\x01\n\x17\x46\x61iloverInstanceRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x8f\x02\n\x12InjectFaultRequest\x12T\n\nfault_type\x18\x01 \x01(\x0e\x32:.google.cloud.alloydb.v1alpha.InjectFaultRequest.FaultTypeB\x04\xe2\x41\x01\x02\x12\x36\n\x04name\x18\x02 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x18\n\nrequest_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\"4\n\tFaultType\x12\x1a\n\x16\x46\x41ULT_TYPE_UNSPECIFIED\x10\x00\x12\x0b\n\x07STOP_VM\x10\x01\"\x87\x01\n\x16RestartInstanceRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x95\x01\n\x12ListBackupsRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe2\x41\x01\x02\xfa\x41\x1f\x12\x1d\x61lloydb.googleapis.com/Backup\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\x12\x0e\n\x06\x66ilter\x18\x04 \x01(\t\x12\x10\n\x08order_by\x18\x05 \x01(\t\"z\n\x13ListBackupsResponse\x12\x35\n\x07\x62\x61\x63kups\x18\x01 \x03(\x0b\x32$.google.cloud.alloydb.v1alpha.Backup\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"H\n\x10GetBackupRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe2\x41\x01\x02\xfa\x41\x1f\n\x1d\x61lloydb.googleapis.com/Backup\"\xd9\x01\n\x13\x43reateBackupRequest\x12\x36\n\x06parent\x18\x01 \x01(\tB&\xe2\x41\x01\x02\xfa\x41\x1f\x12\x1d\x61lloydb.googleapis.com/Backup\x12\x17\n\tbackup_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12:\n\x06\x62\x61\x63kup\x18\x03 \x01(\x0b\x32$.google.cloud.alloydb.v1alpha.BackupB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xdc\x01\n\x13UpdateBackupRequest\x12\x35\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x01\x12:\n\x06\x62\x61\x63kup\x18\x02 \x01(\x0b\x32$.google.cloud.alloydb.v1alpha.BackupB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12\x1b\n\rallow_missing\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x96\x01\n\x13\x44\x65leteBackupRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe2\x41\x01\x02\xfa\x41\x1f\n\x1d\x61lloydb.googleapis.com/Backup\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12\x12\n\x04\x65tag\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\"\x91\x01\n!ListSupportedDatabaseFlagsRequest\x12\x45\n\x06parent\x18\x01 \x01(\tB5\xe2\x41\x01\x02\xfa\x41.\x12,alloydb.googleapis.com/SupportedDatabaseFlag\x12\x11\n\tpage_size\x18\x02 \x01(\x05\x12\x12\n\npage_token\x18\x03 \x01(\t\"\x94\x01\n\"ListSupportedDatabaseFlagsResponse\x12U\n\x18supported_database_flags\x18\x01 \x03(\x0b\x32\x33.google.cloud.alloydb.v1alpha.SupportedDatabaseFlag\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x85\x02\n GenerateClientCertificateRequest\x12\x37\n\x06parent\x18\x01 \x01(\tB\'\xe2\x41\x01\x02\xfa\x41 \n\x1e\x61lloydb.googleapis.com/Cluster\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x17\n\x07pem_csr\x18\x03 \x01(\tB\x06\x18\x01\xe2\x41\x01\x01\x12\x36\n\rcert_duration\x18\x04 \x01(\x0b\x32\x19.google.protobuf.DurationB\x04\xe2\x41\x01\x01\x12\x18\n\npublic_key\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\x12#\n\x15use_metadata_exchange\x18\x06 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x80\x01\n!GenerateClientCertificateResponse\x12\x1f\n\x0fpem_certificate\x18\x01 \x01(\tB\x06\x18\x01\xe2\x41\x01\x03\x12#\n\x15pem_certificate_chain\x18\x02 \x03(\tB\x04\xe2\x41\x01\x03\x12\x15\n\x07\x63\x61_cert\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\"n\n\x18GetConnectionInfoRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\n\x1f\x61lloydb.googleapis.com/Instance\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\"\x88\x03\n\x11OperationMetadata\x12k\n\x1f\x62\x61tch_create_instances_metadata\x18\x08 \x01(\x0b\x32:.google.cloud.alloydb.v1alpha.BatchCreateInstancesMetadataB\x04\xe2\x41\x01\x03H\x00\x12\x35\n\x0b\x63reate_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x32\n\x08\x65nd_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.TimestampB\x04\xe2\x41\x01\x03\x12\x14\n\x06target\x18\x03 \x01(\tB\x04\xe2\x41\x01\x03\x12\x12\n\x04verb\x18\x04 \x01(\tB\x04\xe2\x41\x01\x03\x12\x1c\n\x0estatus_message\x18\x05 \x01(\tB\x04\xe2\x41\x01\x03\x12$\n\x16requested_cancellation\x18\x06 \x01(\x08\x42\x04\xe2\x41\x01\x03\x12\x19\n\x0b\x61pi_version\x18\x07 \x01(\tB\x04\xe2\x41\x01\x03\x42\x12\n\x10request_specific\"\xa9\x01\n\x10ListUsersRequest\x12\x34\n\x06parent\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\x12\x1b\x61lloydb.googleapis.com/User\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x18\n\npage_token\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x14\n\x06\x66ilter\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x16\n\x08order_by\x18\x05 \x01(\tB\x04\xe2\x41\x01\x01\"t\n\x11ListUsersResponse\x12\x31\n\x05users\x18\x01 \x03(\x0b\x32\".google.cloud.alloydb.v1alpha.User\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x13\n\x0bunreachable\x18\x03 \x03(\t\"D\n\x0eGetUserRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\n\x1b\x61lloydb.googleapis.com/User\"\xcf\x01\n\x11\x43reateUserRequest\x12\x34\n\x06parent\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\x12\x1b\x61lloydb.googleapis.com/User\x12\x15\n\x07user_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x02\x12\x36\n\x04user\x18\x03 \x01(\x0b\x32\".google.cloud.alloydb.v1alpha.UserB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\xd6\x01\n\x11UpdateUserRequest\x12\x35\n\x0bupdate_mask\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x01\x12\x36\n\x04user\x18\x02 \x01(\x0b\x32\".google.cloud.alloydb.v1alpha.UserB\x04\xe2\x41\x01\x02\x12\x18\n\nrequest_id\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x04 \x01(\x08\x42\x04\xe2\x41\x01\x01\x12\x1b\n\rallow_missing\x18\x05 \x01(\x08\x42\x04\xe2\x41\x01\x01\"~\n\x11\x44\x65leteUserRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\n\x1b\x61lloydb.googleapis.com/User\x12\x18\n\nrequest_id\x18\x02 \x01(\tB\x04\xe2\x41\x01\x01\x12\x1b\n\rvalidate_only\x18\x03 \x01(\x08\x42\x04\xe2\x41\x01\x01\"\x99\x01\n\x14ListDatabasesRequest\x12\x38\n\x06parent\x18\x01 \x01(\tB(\xe2\x41\x01\x02\xfa\x41!\x12\x1f\x61lloydb.googleapis.com/Database\x12\x17\n\tpage_size\x18\x02 \x01(\x05\x42\x04\xe2\x41\x01\x01\x12\x18\n\npage_token\x18\x03 \x01(\tB\x04\xe2\x41\x01\x01\x12\x14\n\x06\x66ilter\x18\x04 \x01(\tB\x04\xe2\x41\x01\x01\"k\n\x15ListDatabasesResponse\x12\x39\n\tdatabases\x18\x01 \x03(\x0b\x32&.google.cloud.alloydb.v1alpha.Database\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t2\xbc\x36\n\x0c\x41lloyDBAdmin\x12\xb9\x01\n\x0cListClusters\x12\x31.google.cloud.alloydb.v1alpha.ListClustersRequest\x1a\x32.google.cloud.alloydb.v1alpha.ListClustersResponse\"B\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x33\x12\x31/v1alpha/{parent=projects/*/locations/*}/clusters\x12\xa6\x01\n\nGetCluster\x12/.google.cloud.alloydb.v1alpha.GetClusterRequest\x1a%.google.cloud.alloydb.v1alpha.Cluster\"@\xda\x41\x04name\x82\xd3\xe4\x93\x02\x33\x12\x31/v1alpha/{name=projects/*/locations/*/clusters/*}\x12\xe1\x01\n\rCreateCluster\x12\x32.google.cloud.alloydb.v1alpha.CreateClusterRequest\x1a\x1d.google.longrunning.Operation\"}\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\xda\x41\x19parent,cluster,cluster_id\x82\xd3\xe4\x93\x02<\"1/v1alpha/{parent=projects/*/locations/*}/clusters:\x07\x63luster\x12\xe3\x01\n\rUpdateCluster\x12\x32.google.cloud.alloydb.v1alpha.UpdateClusterRequest\x1a\x1d.google.longrunning.Operation\"\x7f\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\xda\x41\x13\x63luster,update_mask\x82\xd3\xe4\x93\x02\x44\x32\x39/v1alpha/{cluster.name=projects/*/locations/*/clusters/*}:\x07\x63luster\x12\xd1\x01\n\rDeleteCluster\x12\x32.google.cloud.alloydb.v1alpha.DeleteClusterRequest\x1a\x1d.google.longrunning.Operation\"m\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x33*1/v1alpha/{name=projects/*/locations/*/clusters/*}\x12\xd0\x01\n\x0ePromoteCluster\x12\x33.google.cloud.alloydb.v1alpha.PromoteClusterRequest\x1a\x1d.google.longrunning.Operation\"j\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02>\"9/v1alpha/{name=projects/*/locations/*/clusters/*}:promote:\x01*\x12\xc9\x01\n\x0eRestoreCluster\x12\x33.google.cloud.alloydb.v1alpha.RestoreClusterRequest\x1a\x1d.google.longrunning.Operation\"c\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02>\"9/v1alpha/{parent=projects/*/locations/*}/clusters:restore:\x01*\x12\x84\x02\n\x16\x43reateSecondaryCluster\x12;.google.cloud.alloydb.v1alpha.CreateSecondaryClusterRequest\x1a\x1d.google.longrunning.Operation\"\x8d\x01\xca\x41\x1c\n\x07\x43luster\x12\x11OperationMetadata\xda\x41\x19parent,cluster,cluster_id\x82\xd3\xe4\x93\x02L\"A/v1alpha/{parent=projects/*/locations/*}/clusters:createsecondary:\x07\x63luster\x12\xc8\x01\n\rListInstances\x12\x32.google.cloud.alloydb.v1alpha.ListInstancesRequest\x1a\x33.google.cloud.alloydb.v1alpha.ListInstancesResponse\"N\xda\x41\x06parent\x82\xd3\xe4\x93\x02?\x12=/v1alpha/{parent=projects/*/locations/*/clusters/*}/instances\x12\xb5\x01\n\x0bGetInstance\x12\x30.google.cloud.alloydb.v1alpha.GetInstanceRequest\x1a&.google.cloud.alloydb.v1alpha.Instance\"L\xda\x41\x04name\x82\xd3\xe4\x93\x02?\x12=/v1alpha/{name=projects/*/locations/*/clusters/*/instances/*}\x12\xf4\x01\n\x0e\x43reateInstance\x12\x33.google.cloud.alloydb.v1alpha.CreateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x8d\x01\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x1bparent,instance,instance_id\x82\xd3\xe4\x93\x02I\"=/v1alpha/{parent=projects/*/locations/*/clusters/*}/instances:\x08instance\x12\x96\x02\n\x17\x43reateSecondaryInstance\x12<.google.cloud.alloydb.v1alpha.CreateSecondaryInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x9d\x01\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x1bparent,instance,instance_id\x82\xd3\xe4\x93\x02Y\"M/v1alpha/{parent=projects/*/locations/*/clusters/*}/instances:createsecondary:\x08instance\x12\x82\x02\n\x14\x42\x61tchCreateInstances\x12\x39.google.cloud.alloydb.v1alpha.BatchCreateInstancesRequest\x1a\x1d.google.longrunning.Operation\"\x8f\x01\xca\x41\x31\n\x1c\x42\x61tchCreateInstancesResponse\x12\x11OperationMetadata\x82\xd3\xe4\x93\x02U\"I/v1alpha/{parent=projects/*/locations/*/clusters/*}/instances:batchCreate:\x08requests\x12\xf6\x01\n\x0eUpdateInstance\x12\x33.google.cloud.alloydb.v1alpha.UpdateInstanceRequest\x1a\x1d.google.longrunning.Operation\"\x8f\x01\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x14instance,update_mask\x82\xd3\xe4\x93\x02R2F/v1alpha/{instance.name=projects/*/locations/*/clusters/*/instances/*}:\x08instance\x12\xdf\x01\n\x0e\x44\x65leteInstance\x12\x33.google.cloud.alloydb.v1alpha.DeleteInstanceRequest\x1a\x1d.google.longrunning.Operation\"y\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02?*=/v1alpha/{name=projects/*/locations/*/clusters/*/instances/*}\x12\xe2\x01\n\x10\x46\x61iloverInstance\x12\x35.google.cloud.alloydb.v1alpha.FailoverInstanceRequest\x1a\x1d.google.longrunning.Operation\"x\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02K\"F/v1alpha/{name=projects/*/locations/*/clusters/*/instances/*}:failover:\x01*\x12\xe7\x01\n\x0bInjectFault\x12\x30.google.cloud.alloydb.v1alpha.InjectFaultRequest\x1a\x1d.google.longrunning.Operation\"\x86\x01\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x0f\x66\x61ult_type,name\x82\xd3\xe4\x93\x02N\"I/v1alpha/{name=projects/*/locations/*/clusters/*/instances/*}:injectFault:\x01*\x12\xdf\x01\n\x0fRestartInstance\x12\x34.google.cloud.alloydb.v1alpha.RestartInstanceRequest\x1a\x1d.google.longrunning.Operation\"w\xca\x41\x1d\n\x08Instance\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02J\"E/v1alpha/{name=projects/*/locations/*/clusters/*/instances/*}:restart:\x01*\x12\xb5\x01\n\x0bListBackups\x12\x30.google.cloud.alloydb.v1alpha.ListBackupsRequest\x1a\x31.google.cloud.alloydb.v1alpha.ListBackupsResponse\"A\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x32\x12\x30/v1alpha/{parent=projects/*/locations/*}/backups\x12\xa2\x01\n\tGetBackup\x12..google.cloud.alloydb.v1alpha.GetBackupRequest\x1a$.google.cloud.alloydb.v1alpha.Backup\"?\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32\x12\x30/v1alpha/{name=projects/*/locations/*/backups/*}\x12\xda\x01\n\x0c\x43reateBackup\x12\x31.google.cloud.alloydb.v1alpha.CreateBackupRequest\x1a\x1d.google.longrunning.Operation\"x\xca\x41\x1b\n\x06\x42\x61\x63kup\x12\x11OperationMetadata\xda\x41\x17parent,backup,backup_id\x82\xd3\xe4\x93\x02:\"0/v1alpha/{parent=projects/*/locations/*}/backups:\x06\x62\x61\x63kup\x12\xdc\x01\n\x0cUpdateBackup\x12\x31.google.cloud.alloydb.v1alpha.UpdateBackupRequest\x1a\x1d.google.longrunning.Operation\"z\xca\x41\x1b\n\x06\x42\x61\x63kup\x12\x11OperationMetadata\xda\x41\x12\x62\x61\x63kup,update_mask\x82\xd3\xe4\x93\x02\x41\x32\x37/v1alpha/{backup.name=projects/*/locations/*/backups/*}:\x06\x62\x61\x63kup\x12\xce\x01\n\x0c\x44\x65leteBackup\x12\x31.google.cloud.alloydb.v1alpha.DeleteBackupRequest\x1a\x1d.google.longrunning.Operation\"l\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x32*0/v1alpha/{name=projects/*/locations/*/backups/*}\x12\xf1\x01\n\x1aListSupportedDatabaseFlags\x12?.google.cloud.alloydb.v1alpha.ListSupportedDatabaseFlagsRequest\x1a@.google.cloud.alloydb.v1alpha.ListSupportedDatabaseFlagsResponse\"P\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x41\x12?/v1alpha/{parent=projects/*/locations/*}/supportedDatabaseFlags\x12\xff\x01\n\x19GenerateClientCertificate\x12>.google.cloud.alloydb.v1alpha.GenerateClientCertificateRequest\x1a?.google.cloud.alloydb.v1alpha.GenerateClientCertificateResponse\"a\xda\x41\x06parent\x82\xd3\xe4\x93\x02R\"M/v1alpha/{parent=projects/*/locations/*/clusters/*}:generateClientCertificate:\x01*\x12\xda\x01\n\x11GetConnectionInfo\x12\x36.google.cloud.alloydb.v1alpha.GetConnectionInfoRequest\x1a,.google.cloud.alloydb.v1alpha.ConnectionInfo\"_\xda\x41\x06parent\x82\xd3\xe4\x93\x02P\x12N/v1alpha/{parent=projects/*/locations/*/clusters/*/instances/*}/connectionInfo\x12\xb8\x01\n\tListUsers\x12..google.cloud.alloydb.v1alpha.ListUsersRequest\x1a/.google.cloud.alloydb.v1alpha.ListUsersResponse\"J\xda\x41\x06parent\x82\xd3\xe4\x93\x02;\x12\x39/v1alpha/{parent=projects/*/locations/*/clusters/*}/users\x12\xa5\x01\n\x07GetUser\x12,.google.cloud.alloydb.v1alpha.GetUserRequest\x1a\".google.cloud.alloydb.v1alpha.User\"H\xda\x41\x04name\x82\xd3\xe4\x93\x02;\x12\x39/v1alpha/{name=projects/*/locations/*/clusters/*/users/*}\x12\xc0\x01\n\nCreateUser\x12/.google.cloud.alloydb.v1alpha.CreateUserRequest\x1a\".google.cloud.alloydb.v1alpha.User\"]\xda\x41\x13parent,user,user_id\x82\xd3\xe4\x93\x02\x41\"9/v1alpha/{parent=projects/*/locations/*/clusters/*}/users:\x04user\x12\xc2\x01\n\nUpdateUser\x12/.google.cloud.alloydb.v1alpha.UpdateUserRequest\x1a\".google.cloud.alloydb.v1alpha.User\"_\xda\x41\x10user,update_mask\x82\xd3\xe4\x93\x02\x46\x32>/v1alpha/{user.name=projects/*/locations/*/clusters/*/users/*}:\x04user\x12\x9f\x01\n\nDeleteUser\x12/.google.cloud.alloydb.v1alpha.DeleteUserRequest\x1a\x16.google.protobuf.Empty\"H\xda\x41\x04name\x82\xd3\xe4\x93\x02;*9/v1alpha/{name=projects/*/locations/*/clusters/*/users/*}\x12\xc8\x01\n\rListDatabases\x12\x32.google.cloud.alloydb.v1alpha.ListDatabasesRequest\x1a\x33.google.cloud.alloydb.v1alpha.ListDatabasesResponse\"N\xda\x41\x06parent\x82\xd3\xe4\x93\x02?\x12=/v1alpha/{parent=projects/*/locations/*/clusters/*}/databases\x1aJ\xca\x41\x16\x61lloydb.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xce\x01\n com.google.cloud.alloydb.v1alphaB\x0cServiceProtoP\x01Z:cloud.google.com/go/alloydb/apiv1alpha/alloydbpb;alloydbpb\xaa\x02\x1cGoogle.Cloud.AlloyDb.V1Alpha\xca\x02\x1cGoogle\\Cloud\\AlloyDb\\V1alpha\xea\x02\x1fGoogle::Cloud::AlloyDB::V1alphab\x06proto3"

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
    ["google.cloud.alloydb.v1alpha.Cluster", "google/cloud/alloydb/v1alpha/resources.proto"],
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
      module V1alpha
        ListClustersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ListClustersRequest").msgclass
        ListClustersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ListClustersResponse").msgclass
        GetClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.GetClusterRequest").msgclass
        CreateSecondaryClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.CreateSecondaryClusterRequest").msgclass
        CreateClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.CreateClusterRequest").msgclass
        UpdateClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.UpdateClusterRequest").msgclass
        DeleteClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.DeleteClusterRequest").msgclass
        PromoteClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.PromoteClusterRequest").msgclass
        RestoreClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.RestoreClusterRequest").msgclass
        ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ListInstancesRequest").msgclass
        ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ListInstancesResponse").msgclass
        GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.GetInstanceRequest").msgclass
        CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.CreateInstanceRequest").msgclass
        CreateSecondaryInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.CreateSecondaryInstanceRequest").msgclass
        CreateInstanceRequests = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.CreateInstanceRequests").msgclass
        BatchCreateInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.BatchCreateInstancesRequest").msgclass
        BatchCreateInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.BatchCreateInstancesResponse").msgclass
        BatchCreateInstancesMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.BatchCreateInstancesMetadata").msgclass
        BatchCreateInstanceStatus = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.BatchCreateInstanceStatus").msgclass
        BatchCreateInstanceStatus::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.BatchCreateInstanceStatus.State").enummodule
        UpdateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.UpdateInstanceRequest").msgclass
        DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.DeleteInstanceRequest").msgclass
        FailoverInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.FailoverInstanceRequest").msgclass
        InjectFaultRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.InjectFaultRequest").msgclass
        InjectFaultRequest::FaultType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.InjectFaultRequest.FaultType").enummodule
        RestartInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.RestartInstanceRequest").msgclass
        ListBackupsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ListBackupsRequest").msgclass
        ListBackupsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ListBackupsResponse").msgclass
        GetBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.GetBackupRequest").msgclass
        CreateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.CreateBackupRequest").msgclass
        UpdateBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.UpdateBackupRequest").msgclass
        DeleteBackupRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.DeleteBackupRequest").msgclass
        ListSupportedDatabaseFlagsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ListSupportedDatabaseFlagsRequest").msgclass
        ListSupportedDatabaseFlagsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ListSupportedDatabaseFlagsResponse").msgclass
        GenerateClientCertificateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.GenerateClientCertificateRequest").msgclass
        GenerateClientCertificateResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.GenerateClientCertificateResponse").msgclass
        GetConnectionInfoRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.GetConnectionInfoRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.OperationMetadata").msgclass
        ListUsersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ListUsersRequest").msgclass
        ListUsersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ListUsersResponse").msgclass
        GetUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.GetUserRequest").msgclass
        CreateUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.CreateUserRequest").msgclass
        UpdateUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.UpdateUserRequest").msgclass
        DeleteUserRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.DeleteUserRequest").msgclass
        ListDatabasesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ListDatabasesRequest").msgclass
        ListDatabasesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.alloydb.v1alpha.ListDatabasesResponse").msgclass
      end
    end
  end
end

# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/bigtable/admin/v2/bigtable_instance_admin.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/bigtable/admin/v2/instance_pb'
require 'google/iam/v1/iam_policy_pb'
require 'google/iam/v1/policy_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'


descriptor_data = "\n6google/bigtable/admin/v2/bigtable_instance_admin.proto\x12\x18google.bigtable.admin.v2\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\'google/bigtable/admin/v2/instance.proto\x1a\x1egoogle/iam/v1/iam_policy.proto\x1a\x1agoogle/iam/v1/policy.proto\x1a#google/longrunning/operations.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a google/protobuf/field_mask.proto\x1a\x1fgoogle/protobuf/timestamp.proto\"\xdb\x02\n\x15\x43reateInstanceRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x18\n\x0binstance_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x39\n\x08instance\x18\x03 \x01(\x0b\x32\".google.bigtable.admin.v2.InstanceB\x03\xe0\x41\x02\x12T\n\x08\x63lusters\x18\x04 \x03(\x0b\x32=.google.bigtable.admin.v2.CreateInstanceRequest.ClustersEntryB\x03\xe0\x41\x02\x1aR\n\rClustersEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12\x30\n\x05value\x18\x02 \x01(\x0b\x32!.google.bigtable.admin.v2.Cluster:\x02\x38\x01\"Q\n\x12GetInstanceRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Instance\"o\n\x14ListInstancesRequest\x12\x43\n\x06parent\x18\x01 \x01(\tB3\xe0\x41\x02\xfa\x41-\n+cloudresourcemanager.googleapis.com/Project\x12\x12\n\npage_token\x18\x02 \x01(\t\"\x81\x01\n\x15ListInstancesResponse\x12\x35\n\tinstances\x18\x01 \x03(\x0b\x32\".google.bigtable.admin.v2.Instance\x12\x18\n\x10\x66\x61iled_locations\x18\x02 \x03(\t\x12\x17\n\x0fnext_page_token\x18\x03 \x01(\t\"\x8f\x01\n\x1cPartialUpdateInstanceRequest\x12\x39\n\x08instance\x18\x01 \x01(\x0b\x32\".google.bigtable.admin.v2.InstanceB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"T\n\x15\x44\x65leteInstanceRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Instance\"\xa7\x01\n\x14\x43reateClusterRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Instance\x12\x17\n\ncluster_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12\x37\n\x07\x63luster\x18\x03 \x01(\x0b\x32!.google.bigtable.admin.v2.ClusterB\x03\xe0\x41\x02\"O\n\x11GetClusterRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$bigtableadmin.googleapis.com/Cluster\"h\n\x13ListClustersRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Instance\x12\x12\n\npage_token\x18\x02 \x01(\t\"~\n\x14ListClustersResponse\x12\x33\n\x08\x63lusters\x18\x01 \x03(\x0b\x32!.google.bigtable.admin.v2.Cluster\x12\x18\n\x10\x66\x61iled_locations\x18\x02 \x03(\t\x12\x17\n\x0fnext_page_token\x18\x03 \x01(\t\"R\n\x14\x44\x65leteClusterRequest\x12:\n\x04name\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$bigtableadmin.googleapis.com/Cluster\"\xc6\x01\n\x16\x43reateInstanceMetadata\x12I\n\x10original_request\x18\x01 \x01(\x0b\x32/.google.bigtable.admin.v2.CreateInstanceRequest\x12\x30\n\x0crequest_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x66inish_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xcd\x01\n\x16UpdateInstanceMetadata\x12P\n\x10original_request\x18\x01 \x01(\x0b\x32\x36.google.bigtable.admin.v2.PartialUpdateInstanceRequest\x12\x30\n\x0crequest_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x66inish_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xfb\x04\n\x15\x43reateClusterMetadata\x12H\n\x10original_request\x18\x01 \x01(\x0b\x32..google.bigtable.admin.v2.CreateClusterRequest\x12\x30\n\x0crequest_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x66inish_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12K\n\x06tables\x18\x04 \x03(\x0b\x32;.google.bigtable.admin.v2.CreateClusterMetadata.TablesEntry\x1a\xf9\x01\n\rTableProgress\x12\x1c\n\x14\x65stimated_size_bytes\x18\x02 \x01(\x03\x12\x1e\n\x16\x65stimated_copied_bytes\x18\x03 \x01(\x03\x12R\n\x05state\x18\x04 \x01(\x0e\x32\x43.google.bigtable.admin.v2.CreateClusterMetadata.TableProgress.State\"V\n\x05State\x12\x15\n\x11STATE_UNSPECIFIED\x10\x00\x12\x0b\n\x07PENDING\x10\x01\x12\x0b\n\x07\x43OPYING\x10\x02\x12\r\n\tCOMPLETED\x10\x03\x12\r\n\tCANCELLED\x10\x04\x1al\n\x0bTablesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12L\n\x05value\x18\x02 \x01(\x0b\x32=.google.bigtable.admin.v2.CreateClusterMetadata.TableProgress:\x02\x38\x01\"\xb7\x01\n\x15UpdateClusterMetadata\x12;\n\x10original_request\x18\x01 \x01(\x0b\x32!.google.bigtable.admin.v2.Cluster\x12\x30\n\x0crequest_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x66inish_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xd2\x01\n\x1cPartialUpdateClusterMetadata\x12\x30\n\x0crequest_time\x18\x01 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12/\n\x0b\x66inish_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12O\n\x10original_request\x18\x03 \x01(\x0b\x32\x35.google.bigtable.admin.v2.PartialUpdateClusterRequest\"\x8c\x01\n\x1bPartialUpdateClusterRequest\x12\x37\n\x07\x63luster\x18\x01 \x01(\x0b\x32!.google.bigtable.admin.v2.ClusterB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\"\xce\x01\n\x17\x43reateAppProfileRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Instance\x12\x1b\n\x0e\x61pp_profile_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12>\n\x0b\x61pp_profile\x18\x03 \x01(\x0b\x32$.google.bigtable.admin.v2.AppProfileB\x03\xe0\x41\x02\x12\x17\n\x0fignore_warnings\x18\x04 \x01(\x08\"U\n\x14GetAppProfileRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'bigtableadmin.googleapis.com/AppProfile\"~\n\x16ListAppProfilesRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Instance\x12\x11\n\tpage_size\x18\x03 \x01(\x05\x12\x12\n\npage_token\x18\x02 \x01(\t\"\x88\x01\n\x17ListAppProfilesResponse\x12:\n\x0c\x61pp_profiles\x18\x01 \x03(\x0b\x32$.google.bigtable.admin.v2.AppProfile\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\x12\x18\n\x10\x66\x61iled_locations\x18\x03 \x03(\t\"\xa8\x01\n\x17UpdateAppProfileRequest\x12>\n\x0b\x61pp_profile\x18\x01 \x01(\x0b\x32$.google.bigtable.admin.v2.AppProfileB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x02\x12\x17\n\x0fignore_warnings\x18\x03 \x01(\x08\"v\n\x17\x44\x65leteAppProfileRequest\x12=\n\x04name\x18\x01 \x01(\tB/\xe0\x41\x02\xfa\x41)\n\'bigtableadmin.googleapis.com/AppProfile\x12\x1c\n\x0fignore_warnings\x18\x02 \x01(\x08\x42\x03\xe0\x41\x02\"\x1a\n\x18UpdateAppProfileMetadata\"\xda\x01\n\x15ListHotTabletsRequest\x12<\n\x06parent\x18\x01 \x01(\tB,\xe0\x41\x02\xfa\x41&\n$bigtableadmin.googleapis.com/Cluster\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x11\n\tpage_size\x18\x04 \x01(\x05\x12\x12\n\npage_token\x18\x05 \x01(\t\"k\n\x16ListHotTabletsResponse\x12\x38\n\x0bhot_tablets\x18\x01 \x03(\x0b\x32#.google.bigtable.admin.v2.HotTablet\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\xb9\x01\n\x18\x43reateLogicalViewRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Instance\x12\x1c\n\x0flogical_view_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12@\n\x0clogical_view\x18\x03 \x01(\x0b\x32%.google.bigtable.admin.v2.LogicalViewB\x03\xe0\x41\x02\"\xc7\x01\n\x19\x43reateLogicalViewMetadata\x12L\n\x10original_request\x18\x01 \x01(\x0b\x32\x32.google.bigtable.admin.v2.CreateLogicalViewRequest\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\x92\x01\n\x18UpdateLogicalViewRequest\x12@\n\x0clogical_view\x18\x01 \x01(\x0b\x32%.google.bigtable.admin.v2.LogicalViewB\x03\xe0\x41\x02\x12\x34\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x03\xe0\x41\x01\"\xc7\x01\n\x19UpdateLogicalViewMetadata\x12L\n\x10original_request\x18\x01 \x01(\x0b\x32\x32.google.bigtable.admin.v2.UpdateLogicalViewRequest\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\"\xcd\x01\n\x1d\x43reateMaterializedViewRequest\x12=\n\x06parent\x18\x01 \x01(\tB-\xe0\x41\x02\xfa\x41\'\n%bigtableadmin.googleapis.com/Instance\x12!\n\x14materialized_view_id\x18\x02 \x01(\tB\x03\xe0\x41\x02\x12J\n\x11materialized_view\x18\x03 \x01(\x0b\x32*.google.bigtable.admin.v2.MaterializedViewB\x03\xe0\x41\x02\"\xd1\x01\n\x1e\x43reateMaterializedViewMetadata\x12Q\n\x10original_request\x18\x01 \x01(\x0b\x32\x37.google.bigtable.admin.v2.CreateMaterializedViewRequest\x12.\n\nstart_time\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12,\n\x08\x65nd_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp2\xb3%\n\x15\x42igtableInstanceAdmin\x12\xda\x01\n\x0e\x43reateInstance\x12/.google.bigtable.admin.v2.CreateInstanceRequest\x1a\x1d.google.longrunning.Operation\"x\xca\x41\"\n\x08Instance\x12\x16\x43reateInstanceMetadata\xda\x41$parent,instance_id,instance,clusters\x82\xd3\xe4\x93\x02&\"!/v2/{parent=projects/*}/instances:\x01*\x12\x91\x01\n\x0bGetInstance\x12,.google.bigtable.admin.v2.GetInstanceRequest\x1a\".google.bigtable.admin.v2.Instance\"0\xda\x41\x04name\x82\xd3\xe4\x93\x02#\x12!/v2/{name=projects/*/instances/*}\x12\xa4\x01\n\rListInstances\x12..google.bigtable.admin.v2.ListInstancesRequest\x1a/.google.bigtable.admin.v2.ListInstancesResponse\"2\xda\x41\x06parent\x82\xd3\xe4\x93\x02#\x12!/v2/{parent=projects/*}/instances\x12\x86\x01\n\x0eUpdateInstance\x12\".google.bigtable.admin.v2.Instance\x1a\".google.bigtable.admin.v2.Instance\",\x82\xd3\xe4\x93\x02&\x1a!/v2/{name=projects/*/instances/*}:\x01*\x12\xe8\x01\n\x15PartialUpdateInstance\x12\x36.google.bigtable.admin.v2.PartialUpdateInstanceRequest\x1a\x1d.google.longrunning.Operation\"x\xca\x41\"\n\x08Instance\x12\x16UpdateInstanceMetadata\xda\x41\x14instance,update_mask\x82\xd3\xe4\x93\x02\x36\x32*/v2/{instance.name=projects/*/instances/*}:\x08instance\x12\x8b\x01\n\x0e\x44\x65leteInstance\x12/.google.bigtable.admin.v2.DeleteInstanceRequest\x1a\x16.google.protobuf.Empty\"0\xda\x41\x04name\x82\xd3\xe4\x93\x02#*!/v2/{name=projects/*/instances/*}\x12\xdc\x01\n\rCreateCluster\x12..google.bigtable.admin.v2.CreateClusterRequest\x1a\x1d.google.longrunning.Operation\"|\xca\x41 \n\x07\x43luster\x12\x15\x43reateClusterMetadata\xda\x41\x19parent,cluster_id,cluster\x82\xd3\xe4\x93\x02\x37\",/v2/{parent=projects/*/instances/*}/clusters:\x07\x63luster\x12\x99\x01\n\nGetCluster\x12+.google.bigtable.admin.v2.GetClusterRequest\x1a!.google.bigtable.admin.v2.Cluster\";\xda\x41\x04name\x82\xd3\xe4\x93\x02.\x12,/v2/{name=projects/*/instances/*/clusters/*}\x12\xac\x01\n\x0cListClusters\x12-.google.bigtable.admin.v2.ListClustersRequest\x1a..google.bigtable.admin.v2.ListClustersResponse\"=\xda\x41\x06parent\x82\xd3\xe4\x93\x02.\x12,/v2/{parent=projects/*/instances/*}/clusters\x12\xad\x01\n\rUpdateCluster\x12!.google.bigtable.admin.v2.Cluster\x1a\x1d.google.longrunning.Operation\"Z\xca\x41 \n\x07\x43luster\x12\x15UpdateClusterMetadata\x82\xd3\xe4\x93\x02\x31\x1a,/v2/{name=projects/*/instances/*/clusters/*}:\x01*\x12\xf4\x01\n\x14PartialUpdateCluster\x12\x35.google.bigtable.admin.v2.PartialUpdateClusterRequest\x1a\x1d.google.longrunning.Operation\"\x85\x01\xca\x41\'\n\x07\x43luster\x12\x1cPartialUpdateClusterMetadata\xda\x41\x13\x63luster,update_mask\x82\xd3\xe4\x93\x02?24/v2/{cluster.name=projects/*/instances/*/clusters/*}:\x07\x63luster\x12\x94\x01\n\rDeleteCluster\x12..google.bigtable.admin.v2.DeleteClusterRequest\x1a\x16.google.protobuf.Empty\";\xda\x41\x04name\x82\xd3\xe4\x93\x02.*,/v2/{name=projects/*/instances/*/clusters/*}\x12\xd5\x01\n\x10\x43reateAppProfile\x12\x31.google.bigtable.admin.v2.CreateAppProfileRequest\x1a$.google.bigtable.admin.v2.AppProfile\"h\xda\x41!parent,app_profile_id,app_profile\x82\xd3\xe4\x93\x02>\"//v2/{parent=projects/*/instances/*}/appProfiles:\x0b\x61pp_profile\x12\xa5\x01\n\rGetAppProfile\x12..google.bigtable.admin.v2.GetAppProfileRequest\x1a$.google.bigtable.admin.v2.AppProfile\">\xda\x41\x04name\x82\xd3\xe4\x93\x02\x31\x12//v2/{name=projects/*/instances/*/appProfiles/*}\x12\xb8\x01\n\x0fListAppProfiles\x12\x30.google.bigtable.admin.v2.ListAppProfilesRequest\x1a\x31.google.bigtable.admin.v2.ListAppProfilesResponse\"@\xda\x41\x06parent\x82\xd3\xe4\x93\x02\x31\x12//v2/{parent=projects/*/instances/*}/appProfiles\x12\xfa\x01\n\x10UpdateAppProfile\x12\x31.google.bigtable.admin.v2.UpdateAppProfileRequest\x1a\x1d.google.longrunning.Operation\"\x93\x01\xca\x41&\n\nAppProfile\x12\x18UpdateAppProfileMetadata\xda\x41\x17\x61pp_profile,update_mask\x82\xd3\xe4\x93\x02J2;/v2/{app_profile.name=projects/*/instances/*/appProfiles/*}:\x0b\x61pp_profile\x12\xb4\x01\n\x10\x44\x65leteAppProfile\x12\x31.google.bigtable.admin.v2.DeleteAppProfileRequest\x1a\x16.google.protobuf.Empty\"U\xda\x41\x04name\xda\x41\x14name,ignore_warnings\x82\xd3\xe4\x93\x02\x31*//v2/{name=projects/*/instances/*/appProfiles/*}\x12\xaa\x02\n\x0cGetIamPolicy\x12\".google.iam.v1.GetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"\xde\x01\xda\x41\x08resource\x82\xd3\xe4\x93\x02\xcc\x01\"2/v2/{resource=projects/*/instances/*}:getIamPolicy:\x01*ZK\"F/v2/{resource=projects/*/instances/*/materializedViews/*}:getIamPolicy:\x01*ZF\"A/v2/{resource=projects/*/instances/*/logicalViews/*}:getIamPolicy:\x01*\x12\xb1\x02\n\x0cSetIamPolicy\x12\".google.iam.v1.SetIamPolicyRequest\x1a\x15.google.iam.v1.Policy\"\xe5\x01\xda\x41\x0fresource,policy\x82\xd3\xe4\x93\x02\xcc\x01\"2/v2/{resource=projects/*/instances/*}:setIamPolicy:\x01*ZK\"F/v2/{resource=projects/*/instances/*/materializedViews/*}:setIamPolicy:\x01*ZF\"A/v2/{resource=projects/*/instances/*/logicalViews/*}:setIamPolicy:\x01*\x12\xe8\x02\n\x12TestIamPermissions\x12(.google.iam.v1.TestIamPermissionsRequest\x1a).google.iam.v1.TestIamPermissionsResponse\"\xfc\x01\xda\x41\x14resource,permissions\x82\xd3\xe4\x93\x02\xde\x01\"8/v2/{resource=projects/*/instances/*}:testIamPermissions:\x01*ZQ\"L/v2/{resource=projects/*/instances/*/materializedViews/*}:testIamPermissions:\x01*ZL\"G/v2/{resource=projects/*/instances/*/logicalViews/*}:testIamPermissions:\x01*\x12\xbf\x01\n\x0eListHotTablets\x12/.google.bigtable.admin.v2.ListHotTabletsRequest\x1a\x30.google.bigtable.admin.v2.ListHotTabletsResponse\"J\xda\x41\x06parent\x82\xd3\xe4\x93\x02;\x12\x39/v2/{parent=projects/*/instances/*/clusters/*}/hotTablets\x1a\x9a\x03\xca\x41\x1c\x62igtableadmin.googleapis.com\xd2\x41\xf7\x02https://www.googleapis.com/auth/bigtable.admin,https://www.googleapis.com/auth/bigtable.admin.cluster,https://www.googleapis.com/auth/bigtable.admin.instance,https://www.googleapis.com/auth/cloud-bigtable.admin,https://www.googleapis.com/auth/cloud-bigtable.admin.cluster,https://www.googleapis.com/auth/cloud-platform,https://www.googleapis.com/auth/cloud-platform.read-onlyB\xdd\x01\n\x1c\x63om.google.bigtable.admin.v2B\x1a\x42igtableInstanceAdminProtoP\x01Z8cloud.google.com/go/bigtable/admin/apiv2/adminpb;adminpb\xaa\x02\x1eGoogle.Cloud.Bigtable.Admin.V2\xca\x02\x1eGoogle\\Cloud\\Bigtable\\Admin\\V2\xea\x02\"Google::Cloud::Bigtable::Admin::V2b\x06proto3"

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
    ["google.bigtable.admin.v2.Instance", "google/bigtable/admin/v2/instance.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
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
    module Bigtable
      module Admin
        module V2
          CreateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateInstanceRequest").msgclass
          GetInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.GetInstanceRequest").msgclass
          ListInstancesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ListInstancesRequest").msgclass
          ListInstancesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ListInstancesResponse").msgclass
          PartialUpdateInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.PartialUpdateInstanceRequest").msgclass
          DeleteInstanceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.DeleteInstanceRequest").msgclass
          CreateClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateClusterRequest").msgclass
          GetClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.GetClusterRequest").msgclass
          ListClustersRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ListClustersRequest").msgclass
          ListClustersResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ListClustersResponse").msgclass
          DeleteClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.DeleteClusterRequest").msgclass
          CreateInstanceMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateInstanceMetadata").msgclass
          UpdateInstanceMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.UpdateInstanceMetadata").msgclass
          CreateClusterMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateClusterMetadata").msgclass
          CreateClusterMetadata::TableProgress = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateClusterMetadata.TableProgress").msgclass
          CreateClusterMetadata::TableProgress::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateClusterMetadata.TableProgress.State").enummodule
          UpdateClusterMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.UpdateClusterMetadata").msgclass
          PartialUpdateClusterMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.PartialUpdateClusterMetadata").msgclass
          PartialUpdateClusterRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.PartialUpdateClusterRequest").msgclass
          CreateAppProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateAppProfileRequest").msgclass
          GetAppProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.GetAppProfileRequest").msgclass
          ListAppProfilesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ListAppProfilesRequest").msgclass
          ListAppProfilesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ListAppProfilesResponse").msgclass
          UpdateAppProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.UpdateAppProfileRequest").msgclass
          DeleteAppProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.DeleteAppProfileRequest").msgclass
          UpdateAppProfileMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.UpdateAppProfileMetadata").msgclass
          ListHotTabletsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ListHotTabletsRequest").msgclass
          ListHotTabletsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.ListHotTabletsResponse").msgclass
          CreateLogicalViewRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateLogicalViewRequest").msgclass
          CreateLogicalViewMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateLogicalViewMetadata").msgclass
          UpdateLogicalViewRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.UpdateLogicalViewRequest").msgclass
          UpdateLogicalViewMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.UpdateLogicalViewMetadata").msgclass
          CreateMaterializedViewRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateMaterializedViewRequest").msgclass
          CreateMaterializedViewMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.CreateMaterializedViewMetadata").msgclass
        end
      end
    end
  end
end

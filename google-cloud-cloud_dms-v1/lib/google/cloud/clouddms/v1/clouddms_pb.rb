# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/clouddms/v1/clouddms.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/clouddms/v1/clouddms_resources_pb'
require 'google/cloud/clouddms/v1/conversionworkspace_resources_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/clouddms/v1/clouddms.proto", :syntax => :proto3) do
    add_message "google.cloud.clouddms.v1.ListMigrationJobsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.clouddms.v1.ListMigrationJobsResponse" do
      repeated :migration_jobs, :message, 1, "google.cloud.clouddms.v1.MigrationJob"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.clouddms.v1.GetMigrationJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.clouddms.v1.CreateMigrationJobRequest" do
      optional :parent, :string, 1
      optional :migration_job_id, :string, 2
      optional :migration_job, :message, 3, "google.cloud.clouddms.v1.MigrationJob"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.clouddms.v1.UpdateMigrationJobRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :migration_job, :message, 2, "google.cloud.clouddms.v1.MigrationJob"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.clouddms.v1.DeleteMigrationJobRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
      optional :force, :bool, 3
    end
    add_message "google.cloud.clouddms.v1.StartMigrationJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.clouddms.v1.StopMigrationJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.clouddms.v1.ResumeMigrationJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.clouddms.v1.PromoteMigrationJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.clouddms.v1.VerifyMigrationJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.clouddms.v1.RestartMigrationJobRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.clouddms.v1.GenerateSshScriptRequest" do
      optional :migration_job, :string, 1
      optional :vm, :string, 2
      optional :vm_port, :int32, 3
      oneof :vm_config do
        optional :vm_creation_config, :message, 100, "google.cloud.clouddms.v1.VmCreationConfig"
        optional :vm_selection_config, :message, 101, "google.cloud.clouddms.v1.VmSelectionConfig"
      end
    end
    add_message "google.cloud.clouddms.v1.VmCreationConfig" do
      optional :vm_machine_type, :string, 1
      optional :vm_zone, :string, 2
      optional :subnet, :string, 3
    end
    add_message "google.cloud.clouddms.v1.VmSelectionConfig" do
      optional :vm_zone, :string, 1
    end
    add_message "google.cloud.clouddms.v1.SshScript" do
      optional :script, :string, 1
    end
    add_message "google.cloud.clouddms.v1.ListConnectionProfilesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.clouddms.v1.ListConnectionProfilesResponse" do
      repeated :connection_profiles, :message, 1, "google.cloud.clouddms.v1.ConnectionProfile"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.clouddms.v1.GetConnectionProfileRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.clouddms.v1.CreateConnectionProfileRequest" do
      optional :parent, :string, 1
      optional :connection_profile_id, :string, 2
      optional :connection_profile, :message, 3, "google.cloud.clouddms.v1.ConnectionProfile"
      optional :request_id, :string, 4
      optional :validate_only, :bool, 5
      optional :skip_validation, :bool, 6
    end
    add_message "google.cloud.clouddms.v1.UpdateConnectionProfileRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :connection_profile, :message, 2, "google.cloud.clouddms.v1.ConnectionProfile"
      optional :request_id, :string, 3
      optional :validate_only, :bool, 4
      optional :skip_validation, :bool, 5
    end
    add_message "google.cloud.clouddms.v1.DeleteConnectionProfileRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
      optional :force, :bool, 3
    end
    add_message "google.cloud.clouddms.v1.CreatePrivateConnectionRequest" do
      optional :parent, :string, 1
      optional :private_connection_id, :string, 2
      optional :private_connection, :message, 3, "google.cloud.clouddms.v1.PrivateConnection"
      optional :request_id, :string, 4
      optional :skip_validation, :bool, 5
    end
    add_message "google.cloud.clouddms.v1.ListPrivateConnectionsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
      optional :order_by, :string, 5
    end
    add_message "google.cloud.clouddms.v1.ListPrivateConnectionsResponse" do
      repeated :private_connections, :message, 1, "google.cloud.clouddms.v1.PrivateConnection"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.clouddms.v1.DeletePrivateConnectionRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
    end
    add_message "google.cloud.clouddms.v1.GetPrivateConnectionRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.clouddms.v1.OperationMetadata" do
      optional :create_time, :message, 1, "google.protobuf.Timestamp"
      optional :end_time, :message, 2, "google.protobuf.Timestamp"
      optional :target, :string, 3
      optional :verb, :string, 4
      optional :status_message, :string, 5
      optional :requested_cancellation, :bool, 6
      optional :api_version, :string, 7
    end
    add_message "google.cloud.clouddms.v1.ListConversionWorkspacesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.cloud.clouddms.v1.ListConversionWorkspacesResponse" do
      repeated :conversion_workspaces, :message, 1, "google.cloud.clouddms.v1.ConversionWorkspace"
      optional :next_page_token, :string, 2
      repeated :unreachable, :string, 3
    end
    add_message "google.cloud.clouddms.v1.GetConversionWorkspaceRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.clouddms.v1.CreateConversionWorkspaceRequest" do
      optional :parent, :string, 1
      optional :conversion_workspace_id, :string, 2
      optional :conversion_workspace, :message, 3, "google.cloud.clouddms.v1.ConversionWorkspace"
      optional :request_id, :string, 4
    end
    add_message "google.cloud.clouddms.v1.UpdateConversionWorkspaceRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :conversion_workspace, :message, 2, "google.cloud.clouddms.v1.ConversionWorkspace"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.clouddms.v1.DeleteConversionWorkspaceRequest" do
      optional :name, :string, 1
      optional :request_id, :string, 2
    end
    add_message "google.cloud.clouddms.v1.CommitConversionWorkspaceRequest" do
      optional :name, :string, 1
      optional :commit_name, :string, 2
    end
    add_message "google.cloud.clouddms.v1.RollbackConversionWorkspaceRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.clouddms.v1.ApplyConversionWorkspaceRequest" do
      optional :name, :string, 1
      optional :filter, :string, 2
      oneof :destination do
        optional :connection_profile, :string, 100
      end
    end
    add_message "google.cloud.clouddms.v1.SeedConversionWorkspaceRequest" do
      optional :name, :string, 1
      optional :auto_commit, :bool, 2
      oneof :seed_from do
        optional :source_connection_profile, :string, 100
        optional :destination_connection_profile, :string, 101
      end
    end
    add_message "google.cloud.clouddms.v1.ConvertConversionWorkspaceRequest" do
      optional :name, :string, 1
      optional :auto_commit, :bool, 4
      optional :filter, :string, 5
    end
    add_message "google.cloud.clouddms.v1.ImportMappingRulesRequest" do
      optional :parent, :string, 1
      optional :rules_format, :enum, 2, "google.cloud.clouddms.v1.ImportRulesFileFormat"
      repeated :rules_files, :message, 3, "google.cloud.clouddms.v1.ImportMappingRulesRequest.RulesFile"
      optional :auto_commit, :bool, 6
    end
    add_message "google.cloud.clouddms.v1.ImportMappingRulesRequest.RulesFile" do
      optional :rules_source_filename, :string, 1
      optional :rules_content, :string, 2
    end
    add_message "google.cloud.clouddms.v1.DescribeDatabaseEntitiesRequest" do
      optional :conversion_workspace, :string, 1
      optional :page_size, :int32, 3
      optional :page_token, :string, 4
      optional :tree, :enum, 6, "google.cloud.clouddms.v1.DescribeDatabaseEntitiesRequest.DBTreeType"
      optional :uncommitted, :bool, 11
      optional :commit_id, :string, 12
      optional :filter, :string, 13
    end
    add_enum "google.cloud.clouddms.v1.DescribeDatabaseEntitiesRequest.DBTreeType" do
      value :DB_TREE_TYPE_UNSPECIFIED, 0
      value :SOURCE_TREE, 1
      value :DRAFT_TREE, 2
      value :DESTINATION_TREE, 3
    end
    add_message "google.cloud.clouddms.v1.DescribeDatabaseEntitiesResponse" do
      repeated :database_entities, :message, 1, "google.cloud.clouddms.v1.DatabaseEntity"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.clouddms.v1.SearchBackgroundJobsRequest" do
      optional :conversion_workspace, :string, 1
      optional :return_most_recent_per_job_type, :bool, 2
      optional :max_size, :int32, 3
      optional :completed_until_time, :message, 4, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.clouddms.v1.SearchBackgroundJobsResponse" do
      repeated :jobs, :message, 1, "google.cloud.clouddms.v1.BackgroundJobLogEntry"
    end
    add_message "google.cloud.clouddms.v1.DescribeConversionWorkspaceRevisionsRequest" do
      optional :conversion_workspace, :string, 1
      optional :commit_id, :string, 2
    end
    add_message "google.cloud.clouddms.v1.DescribeConversionWorkspaceRevisionsResponse" do
      repeated :revisions, :message, 1, "google.cloud.clouddms.v1.ConversionWorkspace"
    end
    add_message "google.cloud.clouddms.v1.FetchStaticIpsRequest" do
      optional :name, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.clouddms.v1.FetchStaticIpsResponse" do
      repeated :static_ips, :string, 1
      optional :next_page_token, :string, 2
    end
  end
end

module Google
  module Cloud
    module CloudDMS
      module V1
        ListMigrationJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ListMigrationJobsRequest").msgclass
        ListMigrationJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ListMigrationJobsResponse").msgclass
        GetMigrationJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.GetMigrationJobRequest").msgclass
        CreateMigrationJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CreateMigrationJobRequest").msgclass
        UpdateMigrationJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.UpdateMigrationJobRequest").msgclass
        DeleteMigrationJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DeleteMigrationJobRequest").msgclass
        StartMigrationJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.StartMigrationJobRequest").msgclass
        StopMigrationJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.StopMigrationJobRequest").msgclass
        ResumeMigrationJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ResumeMigrationJobRequest").msgclass
        PromoteMigrationJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.PromoteMigrationJobRequest").msgclass
        VerifyMigrationJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.VerifyMigrationJobRequest").msgclass
        RestartMigrationJobRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.RestartMigrationJobRequest").msgclass
        GenerateSshScriptRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.GenerateSshScriptRequest").msgclass
        VmCreationConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.VmCreationConfig").msgclass
        VmSelectionConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.VmSelectionConfig").msgclass
        SshScript = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.SshScript").msgclass
        ListConnectionProfilesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ListConnectionProfilesRequest").msgclass
        ListConnectionProfilesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ListConnectionProfilesResponse").msgclass
        GetConnectionProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.GetConnectionProfileRequest").msgclass
        CreateConnectionProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CreateConnectionProfileRequest").msgclass
        UpdateConnectionProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.UpdateConnectionProfileRequest").msgclass
        DeleteConnectionProfileRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DeleteConnectionProfileRequest").msgclass
        CreatePrivateConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CreatePrivateConnectionRequest").msgclass
        ListPrivateConnectionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ListPrivateConnectionsRequest").msgclass
        ListPrivateConnectionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ListPrivateConnectionsResponse").msgclass
        DeletePrivateConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DeletePrivateConnectionRequest").msgclass
        GetPrivateConnectionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.GetPrivateConnectionRequest").msgclass
        OperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.OperationMetadata").msgclass
        ListConversionWorkspacesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ListConversionWorkspacesRequest").msgclass
        ListConversionWorkspacesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ListConversionWorkspacesResponse").msgclass
        GetConversionWorkspaceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.GetConversionWorkspaceRequest").msgclass
        CreateConversionWorkspaceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CreateConversionWorkspaceRequest").msgclass
        UpdateConversionWorkspaceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.UpdateConversionWorkspaceRequest").msgclass
        DeleteConversionWorkspaceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DeleteConversionWorkspaceRequest").msgclass
        CommitConversionWorkspaceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CommitConversionWorkspaceRequest").msgclass
        RollbackConversionWorkspaceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.RollbackConversionWorkspaceRequest").msgclass
        ApplyConversionWorkspaceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ApplyConversionWorkspaceRequest").msgclass
        SeedConversionWorkspaceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.SeedConversionWorkspaceRequest").msgclass
        ConvertConversionWorkspaceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ConvertConversionWorkspaceRequest").msgclass
        ImportMappingRulesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ImportMappingRulesRequest").msgclass
        ImportMappingRulesRequest::RulesFile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ImportMappingRulesRequest.RulesFile").msgclass
        DescribeDatabaseEntitiesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DescribeDatabaseEntitiesRequest").msgclass
        DescribeDatabaseEntitiesRequest::DBTreeType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DescribeDatabaseEntitiesRequest.DBTreeType").enummodule
        DescribeDatabaseEntitiesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DescribeDatabaseEntitiesResponse").msgclass
        SearchBackgroundJobsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.SearchBackgroundJobsRequest").msgclass
        SearchBackgroundJobsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.SearchBackgroundJobsResponse").msgclass
        DescribeConversionWorkspaceRevisionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DescribeConversionWorkspaceRevisionsRequest").msgclass
        DescribeConversionWorkspaceRevisionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DescribeConversionWorkspaceRevisionsResponse").msgclass
        FetchStaticIpsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.FetchStaticIpsRequest").msgclass
        FetchStaticIpsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.FetchStaticIpsResponse").msgclass
      end
    end
  end
end

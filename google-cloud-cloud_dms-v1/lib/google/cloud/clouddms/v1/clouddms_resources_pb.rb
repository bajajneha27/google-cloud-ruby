# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/clouddms/v1/clouddms_resources.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf/wrappers_pb'
require 'google/rpc/status_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/clouddms/v1/clouddms_resources.proto", :syntax => :proto3) do
    add_message "google.cloud.clouddms.v1.SslConfig" do
      optional :type, :enum, 1, "google.cloud.clouddms.v1.SslConfig.SslType"
      optional :client_key, :string, 2
      optional :client_certificate, :string, 3
      optional :ca_certificate, :string, 4
    end
    add_enum "google.cloud.clouddms.v1.SslConfig.SslType" do
      value :SSL_TYPE_UNSPECIFIED, 0
      value :SERVER_ONLY, 1
      value :SERVER_CLIENT, 2
    end
    add_message "google.cloud.clouddms.v1.MySqlConnectionProfile" do
      optional :host, :string, 1
      optional :port, :int32, 2
      optional :username, :string, 3
      optional :password, :string, 4
      optional :password_set, :bool, 5
      optional :ssl, :message, 6, "google.cloud.clouddms.v1.SslConfig"
      optional :cloud_sql_id, :string, 7
    end
    add_message "google.cloud.clouddms.v1.PostgreSqlConnectionProfile" do
      optional :host, :string, 1
      optional :port, :int32, 2
      optional :username, :string, 3
      optional :password, :string, 4
      optional :password_set, :bool, 5
      optional :ssl, :message, 6, "google.cloud.clouddms.v1.SslConfig"
      optional :cloud_sql_id, :string, 7
    end
    add_message "google.cloud.clouddms.v1.CloudSqlConnectionProfile" do
      optional :cloud_sql_id, :string, 1
      optional :settings, :message, 2, "google.cloud.clouddms.v1.CloudSqlSettings"
      optional :private_ip, :string, 3
      optional :public_ip, :string, 4
    end
    add_message "google.cloud.clouddms.v1.SqlAclEntry" do
      optional :value, :string, 1
      optional :label, :string, 3
      oneof :expiration do
        optional :expire_time, :message, 10, "google.protobuf.Timestamp"
        optional :ttl, :message, 11, "google.protobuf.Duration"
      end
    end
    add_message "google.cloud.clouddms.v1.SqlIpConfig" do
      optional :enable_ipv4, :message, 1, "google.protobuf.BoolValue"
      optional :private_network, :string, 2
      optional :require_ssl, :message, 3, "google.protobuf.BoolValue"
      repeated :authorized_networks, :message, 4, "google.cloud.clouddms.v1.SqlAclEntry"
    end
    add_message "google.cloud.clouddms.v1.CloudSqlSettings" do
      optional :database_version, :enum, 1, "google.cloud.clouddms.v1.CloudSqlSettings.SqlDatabaseVersion"
      map :user_labels, :string, :string, 2
      optional :tier, :string, 3
      optional :storage_auto_resize_limit, :message, 4, "google.protobuf.Int64Value"
      optional :activation_policy, :enum, 5, "google.cloud.clouddms.v1.CloudSqlSettings.SqlActivationPolicy"
      optional :ip_config, :message, 6, "google.cloud.clouddms.v1.SqlIpConfig"
      optional :auto_storage_increase, :message, 7, "google.protobuf.BoolValue"
      map :database_flags, :string, :string, 8
      optional :data_disk_type, :enum, 9, "google.cloud.clouddms.v1.CloudSqlSettings.SqlDataDiskType"
      optional :data_disk_size_gb, :message, 10, "google.protobuf.Int64Value"
      optional :zone, :string, 11
      optional :source_id, :string, 12
      optional :root_password, :string, 13
      optional :root_password_set, :bool, 14
      optional :collation, :string, 15
    end
    add_enum "google.cloud.clouddms.v1.CloudSqlSettings.SqlActivationPolicy" do
      value :SQL_ACTIVATION_POLICY_UNSPECIFIED, 0
      value :ALWAYS, 1
      value :NEVER, 2
    end
    add_enum "google.cloud.clouddms.v1.CloudSqlSettings.SqlDataDiskType" do
      value :SQL_DATA_DISK_TYPE_UNSPECIFIED, 0
      value :PD_SSD, 1
      value :PD_HDD, 2
    end
    add_enum "google.cloud.clouddms.v1.CloudSqlSettings.SqlDatabaseVersion" do
      value :SQL_DATABASE_VERSION_UNSPECIFIED, 0
      value :MYSQL_5_6, 1
      value :MYSQL_5_7, 2
      value :POSTGRES_9_6, 3
      value :POSTGRES_11, 4
      value :POSTGRES_10, 5
      value :MYSQL_8_0, 6
      value :POSTGRES_12, 7
      value :POSTGRES_13, 8
    end
    add_message "google.cloud.clouddms.v1.StaticIpConnectivity" do
    end
    add_message "google.cloud.clouddms.v1.ReverseSshConnectivity" do
      optional :vm_ip, :string, 1
      optional :vm_port, :int32, 2
      optional :vm, :string, 3
      optional :vpc, :string, 4
    end
    add_message "google.cloud.clouddms.v1.VpcPeeringConnectivity" do
      optional :vpc, :string, 1
    end
    add_message "google.cloud.clouddms.v1.DatabaseType" do
      optional :provider, :enum, 1, "google.cloud.clouddms.v1.DatabaseProvider"
      optional :engine, :enum, 2, "google.cloud.clouddms.v1.DatabaseEngine"
    end
    add_message "google.cloud.clouddms.v1.MigrationJob" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      map :labels, :string, :string, 4
      optional :display_name, :string, 5
      optional :state, :enum, 6, "google.cloud.clouddms.v1.MigrationJob.State"
      optional :phase, :enum, 7, "google.cloud.clouddms.v1.MigrationJob.Phase"
      optional :type, :enum, 8, "google.cloud.clouddms.v1.MigrationJob.Type"
      optional :dump_path, :string, 9
      optional :source, :string, 10
      optional :destination, :string, 11
      optional :duration, :message, 12, "google.protobuf.Duration"
      optional :error, :message, 13, "google.rpc.Status"
      optional :source_database, :message, 14, "google.cloud.clouddms.v1.DatabaseType"
      optional :destination_database, :message, 15, "google.cloud.clouddms.v1.DatabaseType"
      optional :end_time, :message, 16, "google.protobuf.Timestamp"
      oneof :connectivity do
        optional :reverse_ssh_connectivity, :message, 101, "google.cloud.clouddms.v1.ReverseSshConnectivity"
        optional :vpc_peering_connectivity, :message, 102, "google.cloud.clouddms.v1.VpcPeeringConnectivity"
        optional :static_ip_connectivity, :message, 103, "google.cloud.clouddms.v1.StaticIpConnectivity"
      end
    end
    add_enum "google.cloud.clouddms.v1.MigrationJob.State" do
      value :STATE_UNSPECIFIED, 0
      value :MAINTENANCE, 1
      value :DRAFT, 2
      value :CREATING, 3
      value :NOT_STARTED, 4
      value :RUNNING, 5
      value :FAILED, 6
      value :COMPLETED, 7
      value :DELETING, 8
      value :STOPPING, 9
      value :STOPPED, 10
      value :DELETED, 11
      value :UPDATING, 12
      value :STARTING, 13
      value :RESTARTING, 14
      value :RESUMING, 15
    end
    add_enum "google.cloud.clouddms.v1.MigrationJob.Phase" do
      value :PHASE_UNSPECIFIED, 0
      value :FULL_DUMP, 1
      value :CDC, 2
      value :PROMOTE_IN_PROGRESS, 3
      value :WAITING_FOR_SOURCE_WRITES_TO_STOP, 4
      value :PREPARING_THE_DUMP, 5
    end
    add_enum "google.cloud.clouddms.v1.MigrationJob.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :ONE_TIME, 1
      value :CONTINUOUS, 2
    end
    add_message "google.cloud.clouddms.v1.ConnectionProfile" do
      optional :name, :string, 1
      optional :create_time, :message, 2, "google.protobuf.Timestamp"
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
      map :labels, :string, :string, 4
      optional :state, :enum, 5, "google.cloud.clouddms.v1.ConnectionProfile.State"
      optional :display_name, :string, 6
      optional :error, :message, 7, "google.rpc.Status"
      optional :provider, :enum, 8, "google.cloud.clouddms.v1.DatabaseProvider"
      oneof :connection_profile do
        optional :mysql, :message, 100, "google.cloud.clouddms.v1.MySqlConnectionProfile"
        optional :postgresql, :message, 101, "google.cloud.clouddms.v1.PostgreSqlConnectionProfile"
        optional :cloudsql, :message, 102, "google.cloud.clouddms.v1.CloudSqlConnectionProfile"
      end
    end
    add_enum "google.cloud.clouddms.v1.ConnectionProfile.State" do
      value :STATE_UNSPECIFIED, 0
      value :DRAFT, 1
      value :CREATING, 2
      value :READY, 3
      value :UPDATING, 4
      value :DELETING, 5
      value :DELETED, 6
      value :FAILED, 7
    end
    add_message "google.cloud.clouddms.v1.MigrationJobVerificationError" do
      optional :error_code, :enum, 1, "google.cloud.clouddms.v1.MigrationJobVerificationError.ErrorCode"
      optional :error_message, :string, 2
      optional :error_detail_message, :string, 3
    end
    add_enum "google.cloud.clouddms.v1.MigrationJobVerificationError.ErrorCode" do
      value :ERROR_CODE_UNSPECIFIED, 0
      value :CONNECTION_FAILURE, 1
      value :AUTHENTICATION_FAILURE, 2
      value :INVALID_CONNECTION_PROFILE_CONFIG, 3
      value :VERSION_INCOMPATIBILITY, 4
      value :CONNECTION_PROFILE_TYPES_INCOMPATIBILITY, 5
      value :NO_PGLOGICAL_INSTALLED, 7
      value :PGLOGICAL_NODE_ALREADY_EXISTS, 8
      value :INVALID_WAL_LEVEL, 9
      value :INVALID_SHARED_PRELOAD_LIBRARY, 10
      value :INSUFFICIENT_MAX_REPLICATION_SLOTS, 11
      value :INSUFFICIENT_MAX_WAL_SENDERS, 12
      value :INSUFFICIENT_MAX_WORKER_PROCESSES, 13
      value :UNSUPPORTED_EXTENSIONS, 14
      value :UNSUPPORTED_MIGRATION_TYPE, 15
      value :INVALID_RDS_LOGICAL_REPLICATION, 16
      value :UNSUPPORTED_GTID_MODE, 17
      value :UNSUPPORTED_TABLE_DEFINITION, 18
      value :UNSUPPORTED_DEFINER, 19
      value :CANT_RESTART_RUNNING_MIGRATION, 21
    end
    add_enum "google.cloud.clouddms.v1.DatabaseEngine" do
      value :DATABASE_ENGINE_UNSPECIFIED, 0
      value :MYSQL, 1
      value :POSTGRESQL, 2
    end
    add_enum "google.cloud.clouddms.v1.DatabaseProvider" do
      value :DATABASE_PROVIDER_UNSPECIFIED, 0
      value :CLOUDSQL, 1
      value :RDS, 2
    end
  end
end

module Google
  module Cloud
    module CloudDMS
      module V1
        SslConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.SslConfig").msgclass
        SslConfig::SslType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.SslConfig.SslType").enummodule
        MySqlConnectionProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MySqlConnectionProfile").msgclass
        PostgreSqlConnectionProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.PostgreSqlConnectionProfile").msgclass
        CloudSqlConnectionProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CloudSqlConnectionProfile").msgclass
        SqlAclEntry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.SqlAclEntry").msgclass
        SqlIpConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.SqlIpConfig").msgclass
        CloudSqlSettings = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CloudSqlSettings").msgclass
        CloudSqlSettings::SqlActivationPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CloudSqlSettings.SqlActivationPolicy").enummodule
        CloudSqlSettings::SqlDataDiskType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CloudSqlSettings.SqlDataDiskType").enummodule
        CloudSqlSettings::SqlDatabaseVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.CloudSqlSettings.SqlDatabaseVersion").enummodule
        StaticIpConnectivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.StaticIpConnectivity").msgclass
        ReverseSshConnectivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ReverseSshConnectivity").msgclass
        VpcPeeringConnectivity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.VpcPeeringConnectivity").msgclass
        DatabaseType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DatabaseType").msgclass
        MigrationJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJob").msgclass
        MigrationJob::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJob.State").enummodule
        MigrationJob::Phase = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJob.Phase").enummodule
        MigrationJob::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJob.Type").enummodule
        ConnectionProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ConnectionProfile").msgclass
        ConnectionProfile::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.ConnectionProfile.State").enummodule
        MigrationJobVerificationError = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJobVerificationError").msgclass
        MigrationJobVerificationError::ErrorCode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.MigrationJobVerificationError.ErrorCode").enummodule
        DatabaseEngine = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DatabaseEngine").enummodule
        DatabaseProvider = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.clouddms.v1.DatabaseProvider").enummodule
      end
    end
  end
end

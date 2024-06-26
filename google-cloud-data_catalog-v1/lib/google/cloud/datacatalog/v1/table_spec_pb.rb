# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/datacatalog/v1/table_spec.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/datacatalog/v1/table_spec.proto", :syntax => :proto3) do
    add_message "google.cloud.datacatalog.v1.BigQueryTableSpec" do
      optional :table_source_type, :enum, 1, "google.cloud.datacatalog.v1.TableSourceType"
      oneof :type_spec do
        optional :view_spec, :message, 2, "google.cloud.datacatalog.v1.ViewSpec"
        optional :table_spec, :message, 3, "google.cloud.datacatalog.v1.TableSpec"
      end
    end
    add_message "google.cloud.datacatalog.v1.ViewSpec" do
      optional :view_query, :string, 1
    end
    add_message "google.cloud.datacatalog.v1.TableSpec" do
      optional :grouped_entry, :string, 1
    end
    add_message "google.cloud.datacatalog.v1.BigQueryDateShardedSpec" do
      optional :dataset, :string, 1
      optional :table_prefix, :string, 2
      optional :shard_count, :int64, 3
    end
    add_enum "google.cloud.datacatalog.v1.TableSourceType" do
      value :TABLE_SOURCE_TYPE_UNSPECIFIED, 0
      value :BIGQUERY_VIEW, 2
      value :BIGQUERY_TABLE, 5
      value :BIGQUERY_MATERIALIZED_VIEW, 7
    end
  end
end

module Google
  module Cloud
    module DataCatalog
      module V1
        BigQueryTableSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.BigQueryTableSpec").msgclass
        ViewSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.ViewSpec").msgclass
        TableSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.TableSpec").msgclass
        BigQueryDateShardedSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.BigQueryDateShardedSpec").msgclass
        TableSourceType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.datacatalog.v1.TableSourceType").enummodule
      end
    end
  end
end

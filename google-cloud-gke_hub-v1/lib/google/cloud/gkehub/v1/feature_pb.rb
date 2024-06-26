# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/gkehub/v1/feature.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/gkehub/v1/configmanagement/configmanagement_pb'
require 'google/cloud/gkehub/v1/multiclusteringress/multiclusteringress_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/gkehub/v1/feature.proto", :syntax => :proto3) do
    add_message "google.cloud.gkehub.v1.Feature" do
      optional :name, :string, 1
      map :labels, :string, :string, 2
      optional :resource_state, :message, 3, "google.cloud.gkehub.v1.FeatureResourceState"
      optional :spec, :message, 4, "google.cloud.gkehub.v1.CommonFeatureSpec"
      map :membership_specs, :string, :message, 5, "google.cloud.gkehub.v1.MembershipFeatureSpec"
      optional :state, :message, 6, "google.cloud.gkehub.v1.CommonFeatureState"
      map :membership_states, :string, :message, 7, "google.cloud.gkehub.v1.MembershipFeatureState"
      optional :create_time, :message, 8, "google.protobuf.Timestamp"
      optional :update_time, :message, 9, "google.protobuf.Timestamp"
      optional :delete_time, :message, 10, "google.protobuf.Timestamp"
    end
    add_message "google.cloud.gkehub.v1.FeatureResourceState" do
      optional :state, :enum, 1, "google.cloud.gkehub.v1.FeatureResourceState.State"
    end
    add_enum "google.cloud.gkehub.v1.FeatureResourceState.State" do
      value :STATE_UNSPECIFIED, 0
      value :ENABLING, 1
      value :ACTIVE, 2
      value :DISABLING, 3
      value :UPDATING, 4
      value :SERVICE_UPDATING, 5
    end
    add_message "google.cloud.gkehub.v1.FeatureState" do
      optional :code, :enum, 1, "google.cloud.gkehub.v1.FeatureState.Code"
      optional :description, :string, 2
      optional :update_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.gkehub.v1.FeatureState.Code" do
      value :CODE_UNSPECIFIED, 0
      value :OK, 1
      value :WARNING, 2
      value :ERROR, 3
    end
    add_message "google.cloud.gkehub.v1.CommonFeatureSpec" do
      oneof :feature_spec do
        optional :multiclusteringress, :message, 102, "google.cloud.gkehub.multiclusteringress.v1.FeatureSpec"
      end
    end
    add_message "google.cloud.gkehub.v1.CommonFeatureState" do
      optional :state, :message, 1, "google.cloud.gkehub.v1.FeatureState"
    end
    add_message "google.cloud.gkehub.v1.MembershipFeatureSpec" do
      oneof :feature_spec do
        optional :configmanagement, :message, 106, "google.cloud.gkehub.configmanagement.v1.MembershipSpec"
      end
    end
    add_message "google.cloud.gkehub.v1.MembershipFeatureState" do
      optional :state, :message, 1, "google.cloud.gkehub.v1.FeatureState"
      oneof :feature_state do
        optional :configmanagement, :message, 106, "google.cloud.gkehub.configmanagement.v1.MembershipState"
      end
    end
  end
end

module Google
  module Cloud
    module GkeHub
      module V1
        Feature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.Feature").msgclass
        FeatureResourceState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.FeatureResourceState").msgclass
        FeatureResourceState::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.FeatureResourceState.State").enummodule
        FeatureState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.FeatureState").msgclass
        FeatureState::Code = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.FeatureState.Code").enummodule
        CommonFeatureSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.CommonFeatureSpec").msgclass
        CommonFeatureState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.CommonFeatureState").msgclass
        MembershipFeatureSpec = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.MembershipFeatureSpec").msgclass
        MembershipFeatureState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.gkehub.v1.MembershipFeatureState").msgclass
      end
    end
  end
end

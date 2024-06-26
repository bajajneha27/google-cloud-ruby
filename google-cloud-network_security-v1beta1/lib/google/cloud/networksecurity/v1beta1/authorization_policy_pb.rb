# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/networksecurity/v1beta1/authorization_policy.proto

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/api/annotations_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/networksecurity/v1beta1/authorization_policy.proto", :syntax => :proto3) do
    add_message "google.cloud.networksecurity.v1beta1.AuthorizationPolicy" do
      optional :name, :string, 1
      optional :description, :string, 2
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :update_time, :message, 4, "google.protobuf.Timestamp"
      map :labels, :string, :string, 5
      optional :action, :enum, 6, "google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Action"
      repeated :rules, :message, 7, "google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Rule"
    end
    add_message "google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Rule" do
      repeated :sources, :message, 1, "google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Rule.Source"
      repeated :destinations, :message, 2, "google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Rule.Destination"
    end
    add_message "google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Rule.Source" do
      repeated :principals, :string, 1
      repeated :ip_blocks, :string, 2
    end
    add_message "google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Rule.Destination" do
      repeated :hosts, :string, 1
      repeated :ports, :uint32, 2
      repeated :methods, :string, 4
      optional :http_header_match, :message, 5, "google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Rule.Destination.HttpHeaderMatch"
    end
    add_message "google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Rule.Destination.HttpHeaderMatch" do
      optional :header_name, :string, 1
      oneof :type do
        optional :regex_match, :string, 2
      end
    end
    add_enum "google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Action" do
      value :ACTION_UNSPECIFIED, 0
      value :ALLOW, 1
      value :DENY, 2
    end
    add_message "google.cloud.networksecurity.v1beta1.ListAuthorizationPoliciesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.networksecurity.v1beta1.ListAuthorizationPoliciesResponse" do
      repeated :authorization_policies, :message, 1, "google.cloud.networksecurity.v1beta1.AuthorizationPolicy"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.networksecurity.v1beta1.GetAuthorizationPolicyRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.networksecurity.v1beta1.CreateAuthorizationPolicyRequest" do
      optional :parent, :string, 1
      optional :authorization_policy_id, :string, 2
      optional :authorization_policy, :message, 3, "google.cloud.networksecurity.v1beta1.AuthorizationPolicy"
    end
    add_message "google.cloud.networksecurity.v1beta1.UpdateAuthorizationPolicyRequest" do
      optional :update_mask, :message, 1, "google.protobuf.FieldMask"
      optional :authorization_policy, :message, 2, "google.cloud.networksecurity.v1beta1.AuthorizationPolicy"
    end
    add_message "google.cloud.networksecurity.v1beta1.DeleteAuthorizationPolicyRequest" do
      optional :name, :string, 1
    end
  end
end

module Google
  module Cloud
    module NetworkSecurity
      module V1beta1
        AuthorizationPolicy = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.AuthorizationPolicy").msgclass
        AuthorizationPolicy::Rule = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Rule").msgclass
        AuthorizationPolicy::Rule::Source = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Rule.Source").msgclass
        AuthorizationPolicy::Rule::Destination = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Rule.Destination").msgclass
        AuthorizationPolicy::Rule::Destination::HttpHeaderMatch = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Rule.Destination.HttpHeaderMatch").msgclass
        AuthorizationPolicy::Action = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.AuthorizationPolicy.Action").enummodule
        ListAuthorizationPoliciesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.ListAuthorizationPoliciesRequest").msgclass
        ListAuthorizationPoliciesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.ListAuthorizationPoliciesResponse").msgclass
        GetAuthorizationPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.GetAuthorizationPolicyRequest").msgclass
        CreateAuthorizationPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.CreateAuthorizationPolicyRequest").msgclass
        UpdateAuthorizationPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.UpdateAuthorizationPolicyRequest").msgclass
        DeleteAuthorizationPolicyRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.networksecurity.v1beta1.DeleteAuthorizationPolicyRequest").msgclass
      end
    end
  end
end

# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dataproc/v1/workflow_templates.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dataproc/v1/clusters_pb'
require 'google/cloud/dataproc/v1/jobs_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dataproc/v1/workflow_templates.proto", :syntax => :proto3) do
    add_message "google.cloud.dataproc.v1.WorkflowTemplate" do
      optional :id, :string, 2
      optional :name, :string, 1
      optional :version, :int32, 3
      optional :create_time, :message, 4, "google.protobuf.Timestamp"
      optional :update_time, :message, 5, "google.protobuf.Timestamp"
      map :labels, :string, :string, 6
      optional :placement, :message, 7, "google.cloud.dataproc.v1.WorkflowTemplatePlacement"
      repeated :jobs, :message, 8, "google.cloud.dataproc.v1.OrderedJob"
      repeated :parameters, :message, 9, "google.cloud.dataproc.v1.TemplateParameter"
      optional :dag_timeout, :message, 10, "google.protobuf.Duration"
    end
    add_message "google.cloud.dataproc.v1.WorkflowTemplatePlacement" do
      oneof :placement do
        optional :managed_cluster, :message, 1, "google.cloud.dataproc.v1.ManagedCluster"
        optional :cluster_selector, :message, 2, "google.cloud.dataproc.v1.ClusterSelector"
      end
    end
    add_message "google.cloud.dataproc.v1.ManagedCluster" do
      optional :cluster_name, :string, 2
      optional :config, :message, 3, "google.cloud.dataproc.v1.ClusterConfig"
      map :labels, :string, :string, 4
    end
    add_message "google.cloud.dataproc.v1.ClusterSelector" do
      optional :zone, :string, 1
      map :cluster_labels, :string, :string, 2
    end
    add_message "google.cloud.dataproc.v1.OrderedJob" do
      optional :step_id, :string, 1
      map :labels, :string, :string, 8
      optional :scheduling, :message, 9, "google.cloud.dataproc.v1.JobScheduling"
      repeated :prerequisite_step_ids, :string, 10
      oneof :job_type do
        optional :hadoop_job, :message, 2, "google.cloud.dataproc.v1.HadoopJob"
        optional :spark_job, :message, 3, "google.cloud.dataproc.v1.SparkJob"
        optional :pyspark_job, :message, 4, "google.cloud.dataproc.v1.PySparkJob"
        optional :hive_job, :message, 5, "google.cloud.dataproc.v1.HiveJob"
        optional :pig_job, :message, 6, "google.cloud.dataproc.v1.PigJob"
        optional :spark_r_job, :message, 11, "google.cloud.dataproc.v1.SparkRJob"
        optional :spark_sql_job, :message, 7, "google.cloud.dataproc.v1.SparkSqlJob"
        optional :presto_job, :message, 12, "google.cloud.dataproc.v1.PrestoJob"
      end
    end
    add_message "google.cloud.dataproc.v1.TemplateParameter" do
      optional :name, :string, 1
      repeated :fields, :string, 2
      optional :description, :string, 3
      optional :validation, :message, 4, "google.cloud.dataproc.v1.ParameterValidation"
    end
    add_message "google.cloud.dataproc.v1.ParameterValidation" do
      oneof :validation_type do
        optional :regex, :message, 1, "google.cloud.dataproc.v1.RegexValidation"
        optional :values, :message, 2, "google.cloud.dataproc.v1.ValueValidation"
      end
    end
    add_message "google.cloud.dataproc.v1.RegexValidation" do
      repeated :regexes, :string, 1
    end
    add_message "google.cloud.dataproc.v1.ValueValidation" do
      repeated :values, :string, 1
    end
    add_message "google.cloud.dataproc.v1.WorkflowMetadata" do
      optional :template, :string, 1
      optional :version, :int32, 2
      optional :create_cluster, :message, 3, "google.cloud.dataproc.v1.ClusterOperation"
      optional :graph, :message, 4, "google.cloud.dataproc.v1.WorkflowGraph"
      optional :delete_cluster, :message, 5, "google.cloud.dataproc.v1.ClusterOperation"
      optional :state, :enum, 6, "google.cloud.dataproc.v1.WorkflowMetadata.State"
      optional :cluster_name, :string, 7
      map :parameters, :string, :string, 8
      optional :start_time, :message, 9, "google.protobuf.Timestamp"
      optional :end_time, :message, 10, "google.protobuf.Timestamp"
      optional :cluster_uuid, :string, 11
      optional :dag_timeout, :message, 12, "google.protobuf.Duration"
      optional :dag_start_time, :message, 13, "google.protobuf.Timestamp"
      optional :dag_end_time, :message, 14, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.dataproc.v1.WorkflowMetadata.State" do
      value :UNKNOWN, 0
      value :PENDING, 1
      value :RUNNING, 2
      value :DONE, 3
    end
    add_message "google.cloud.dataproc.v1.ClusterOperation" do
      optional :operation_id, :string, 1
      optional :error, :string, 2
      optional :done, :bool, 3
    end
    add_message "google.cloud.dataproc.v1.WorkflowGraph" do
      repeated :nodes, :message, 1, "google.cloud.dataproc.v1.WorkflowNode"
    end
    add_message "google.cloud.dataproc.v1.WorkflowNode" do
      optional :step_id, :string, 1
      repeated :prerequisite_step_ids, :string, 2
      optional :job_id, :string, 3
      optional :state, :enum, 5, "google.cloud.dataproc.v1.WorkflowNode.NodeState"
      optional :error, :string, 6
    end
    add_enum "google.cloud.dataproc.v1.WorkflowNode.NodeState" do
      value :NODE_STATE_UNSPECIFIED, 0
      value :BLOCKED, 1
      value :RUNNABLE, 2
      value :RUNNING, 3
      value :COMPLETED, 4
      value :FAILED, 5
    end
    add_message "google.cloud.dataproc.v1.CreateWorkflowTemplateRequest" do
      optional :parent, :string, 1
      optional :template, :message, 2, "google.cloud.dataproc.v1.WorkflowTemplate"
    end
    add_message "google.cloud.dataproc.v1.GetWorkflowTemplateRequest" do
      optional :name, :string, 1
      optional :version, :int32, 2
    end
    add_message "google.cloud.dataproc.v1.InstantiateWorkflowTemplateRequest" do
      optional :name, :string, 1
      optional :version, :int32, 2
      optional :request_id, :string, 5
      map :parameters, :string, :string, 6
    end
    add_message "google.cloud.dataproc.v1.InstantiateInlineWorkflowTemplateRequest" do
      optional :parent, :string, 1
      optional :template, :message, 2, "google.cloud.dataproc.v1.WorkflowTemplate"
      optional :request_id, :string, 3
    end
    add_message "google.cloud.dataproc.v1.UpdateWorkflowTemplateRequest" do
      optional :template, :message, 1, "google.cloud.dataproc.v1.WorkflowTemplate"
    end
    add_message "google.cloud.dataproc.v1.ListWorkflowTemplatesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.dataproc.v1.ListWorkflowTemplatesResponse" do
      repeated :templates, :message, 1, "google.cloud.dataproc.v1.WorkflowTemplate"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.dataproc.v1.DeleteWorkflowTemplateRequest" do
      optional :name, :string, 1
      optional :version, :int32, 2
    end
  end
end

module Google
  module Cloud
    module Dataproc
      module V1
        WorkflowTemplate = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.WorkflowTemplate").msgclass
        WorkflowTemplatePlacement = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.WorkflowTemplatePlacement").msgclass
        ManagedCluster = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ManagedCluster").msgclass
        ClusterSelector = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ClusterSelector").msgclass
        OrderedJob = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.OrderedJob").msgclass
        TemplateParameter = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.TemplateParameter").msgclass
        ParameterValidation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ParameterValidation").msgclass
        RegexValidation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.RegexValidation").msgclass
        ValueValidation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ValueValidation").msgclass
        WorkflowMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.WorkflowMetadata").msgclass
        WorkflowMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.WorkflowMetadata.State").enummodule
        ClusterOperation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ClusterOperation").msgclass
        WorkflowGraph = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.WorkflowGraph").msgclass
        WorkflowNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.WorkflowNode").msgclass
        WorkflowNode::NodeState = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.WorkflowNode.NodeState").enummodule
        CreateWorkflowTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.CreateWorkflowTemplateRequest").msgclass
        GetWorkflowTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.GetWorkflowTemplateRequest").msgclass
        InstantiateWorkflowTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.InstantiateWorkflowTemplateRequest").msgclass
        InstantiateInlineWorkflowTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.InstantiateInlineWorkflowTemplateRequest").msgclass
        UpdateWorkflowTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.UpdateWorkflowTemplateRequest").msgclass
        ListWorkflowTemplatesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ListWorkflowTemplatesRequest").msgclass
        ListWorkflowTemplatesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.ListWorkflowTemplatesResponse").msgclass
        DeleteWorkflowTemplateRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dataproc.v1.DeleteWorkflowTemplateRequest").msgclass
      end
    end
  end
end

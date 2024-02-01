# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/automl/v1/service.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/automl/v1/annotation_payload_pb'
require 'google/cloud/automl/v1/annotation_spec_pb'
require 'google/cloud/automl/v1/dataset_pb'
require 'google/cloud/automl/v1/image_pb'
require 'google/cloud/automl/v1/io_pb'
require 'google/cloud/automl/v1/model_pb'
require 'google/cloud/automl/v1/model_evaluation_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/field_mask_pb'


descriptor_data = "\n$google/cloud/automl/v1/service.proto\x12\x16google.cloud.automl.v1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a/google/cloud/automl/v1/annotation_payload.proto\x1a,google/cloud/automl/v1/annotation_spec.proto\x1a$google/cloud/automl/v1/dataset.proto\x1a\"google/cloud/automl/v1/image.proto\x1a\x1fgoogle/cloud/automl/v1/io.proto\x1a\"google/cloud/automl/v1/model.proto\x1a-google/cloud/automl/v1/model_evaluation.proto\x1a#google/longrunning/operations.proto\x1a google/protobuf/field_mask.proto\"\x8a\x01\n\x14\x43reateDatasetRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x36\n\x07\x64\x61taset\x18\x02 \x01(\x0b\x32\x1f.google.cloud.automl.v1.DatasetB\x04\xe2\x41\x01\x02\"I\n\x11GetDatasetRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe2\x41\x01\x02\xfa\x41\x1f\n\x1d\x61utoml.googleapis.com/Dataset\"\x88\x01\n\x13ListDatasetsRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x0e\n\x06\x66ilter\x18\x03 \x01(\t\x12\x11\n\tpage_size\x18\x04 \x01(\x05\x12\x12\n\npage_token\x18\x06 \x01(\t\"b\n\x14ListDatasetsResponse\x12\x31\n\x08\x64\x61tasets\x18\x01 \x03(\x0b\x32\x1f.google.cloud.automl.v1.Dataset\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"\x85\x01\n\x14UpdateDatasetRequest\x12\x36\n\x07\x64\x61taset\x18\x01 \x01(\x0b\x32\x1f.google.cloud.automl.v1.DatasetB\x04\xe2\x41\x01\x02\x12\x35\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x02\"L\n\x14\x44\x65leteDatasetRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe2\x41\x01\x02\xfa\x41\x1f\n\x1d\x61utoml.googleapis.com/Dataset\"\x8a\x01\n\x11ImportDataRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe2\x41\x01\x02\xfa\x41\x1f\n\x1d\x61utoml.googleapis.com/Dataset\x12?\n\x0cinput_config\x18\x03 \x01(\x0b\x32#.google.cloud.automl.v1.InputConfigB\x04\xe2\x41\x01\x02\"\x8c\x01\n\x11\x45xportDataRequest\x12\x34\n\x04name\x18\x01 \x01(\tB&\xe2\x41\x01\x02\xfa\x41\x1f\n\x1d\x61utoml.googleapis.com/Dataset\x12\x41\n\routput_config\x18\x03 \x01(\x0b\x32$.google.cloud.automl.v1.OutputConfigB\x04\xe2\x41\x01\x02\"W\n\x18GetAnnotationSpecRequest\x12;\n\x04name\x18\x01 \x01(\tB-\xe2\x41\x01\x02\xfa\x41&\n$automl.googleapis.com/AnnotationSpec\"\x84\x01\n\x12\x43reateModelRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x32\n\x05model\x18\x04 \x01(\x0b\x32\x1d.google.cloud.automl.v1.ModelB\x04\xe2\x41\x01\x02\"E\n\x0fGetModelRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\n\x1b\x61utoml.googleapis.com/Model\"\x86\x01\n\x11ListModelsRequest\x12:\n\x06parent\x18\x01 \x01(\tB*\xe2\x41\x01\x02\xfa\x41#\n!locations.googleapis.com/Location\x12\x0e\n\x06\x66ilter\x18\x03 \x01(\t\x12\x11\n\tpage_size\x18\x04 \x01(\x05\x12\x12\n\npage_token\x18\x06 \x01(\t\"[\n\x12ListModelsResponse\x12,\n\x05model\x18\x01 \x03(\x0b\x32\x1d.google.cloud.automl.v1.Model\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t\"H\n\x12\x44\x65leteModelRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\n\x1b\x61utoml.googleapis.com/Model\"\x7f\n\x12UpdateModelRequest\x12\x32\n\x05model\x18\x01 \x01(\x0b\x32\x1d.google.cloud.automl.v1.ModelB\x04\xe2\x41\x01\x02\x12\x35\n\x0bupdate_mask\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.FieldMaskB\x04\xe2\x41\x01\x02\"\xe4\x02\n\x12\x44\x65ployModelRequest\x12\x7f\n0image_object_detection_model_deployment_metadata\x18\x02 \x01(\x0b\x32\x43.google.cloud.automl.v1.ImageObjectDetectionModelDeploymentMetadataH\x00\x12|\n.image_classification_model_deployment_metadata\x18\x04 \x01(\x0b\x32\x42.google.cloud.automl.v1.ImageClassificationModelDeploymentMetadataH\x00\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\n\x1b\x61utoml.googleapis.com/ModelB\x1b\n\x19model_deployment_metadata\"J\n\x14UndeployModelRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\n\x1b\x61utoml.googleapis.com/Model\"\x96\x01\n\x12\x45xportModelRequest\x12\x32\n\x04name\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\n\x1b\x61utoml.googleapis.com/Model\x12L\n\routput_config\x18\x03 \x01(\x0b\x32/.google.cloud.automl.v1.ModelExportOutputConfigB\x04\xe2\x41\x01\x02\"Y\n\x19GetModelEvaluationRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe2\x41\x01\x02\xfa\x41\'\n%automl.googleapis.com/ModelEvaluation\"\x90\x01\n\x1bListModelEvaluationsRequest\x12\x34\n\x06parent\x18\x01 \x01(\tB$\xe2\x41\x01\x02\xfa\x41\x1d\n\x1b\x61utoml.googleapis.com/Model\x12\x14\n\x06\x66ilter\x18\x03 \x01(\tB\x04\xe2\x41\x01\x02\x12\x11\n\tpage_size\x18\x04 \x01(\x05\x12\x12\n\npage_token\x18\x06 \x01(\t\"z\n\x1cListModelEvaluationsResponse\x12\x41\n\x10model_evaluation\x18\x01 \x03(\x0b\x32\'.google.cloud.automl.v1.ModelEvaluation\x12\x17\n\x0fnext_page_token\x18\x02 \x01(\t2\xe8\x1b\n\x06\x41utoMl\x12\xcb\x01\n\rCreateDataset\x12,.google.cloud.automl.v1.CreateDatasetRequest\x1a\x1d.google.longrunning.Operation\"m\xca\x41\x1c\n\x07\x44\x61taset\x12\x11OperationMetadata\xda\x41\x0eparent,dataset\x82\xd3\xe4\x93\x02\x37\",/v1/{parent=projects/*/locations/*}/datasets:\x07\x64\x61taset\x12\x95\x01\n\nGetDataset\x12).google.cloud.automl.v1.GetDatasetRequest\x1a\x1f.google.cloud.automl.v1.Dataset\";\xda\x41\x04name\x82\xd3\xe4\x93\x02.\x12,/v1/{name=projects/*/locations/*/datasets/*}\x12\xa8\x01\n\x0cListDatasets\x12+.google.cloud.automl.v1.ListDatasetsRequest\x1a,.google.cloud.automl.v1.ListDatasetsResponse\"=\xda\x41\x06parent\x82\xd3\xe4\x93\x02.\x12,/v1/{parent=projects/*/locations/*}/datasets\x12\xbb\x01\n\rUpdateDataset\x12,.google.cloud.automl.v1.UpdateDatasetRequest\x1a\x1f.google.cloud.automl.v1.Dataset\"[\xda\x41\x13\x64\x61taset,update_mask\x82\xd3\xe4\x93\x02?24/v1/{dataset.name=projects/*/locations/*/datasets/*}:\x07\x64\x61taset\x12\xc6\x01\n\rDeleteDataset\x12,.google.cloud.automl.v1.DeleteDatasetRequest\x1a\x1d.google.longrunning.Operation\"h\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02.*,/v1/{name=projects/*/locations/*/datasets/*}\x12\xdc\x01\n\nImportData\x12).google.cloud.automl.v1.ImportDataRequest\x1a\x1d.google.longrunning.Operation\"\x83\x01\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x11name,input_config\x82\xd3\xe4\x93\x02<\"7/v1/{name=projects/*/locations/*/datasets/*}:importData:\x01*\x12\xdd\x01\n\nExportData\x12).google.cloud.automl.v1.ExportDataRequest\x1a\x1d.google.longrunning.Operation\"\x84\x01\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x12name,output_config\x82\xd3\xe4\x93\x02<\"7/v1/{name=projects/*/locations/*/datasets/*}:exportData:\x01*\x12\xbc\x01\n\x11GetAnnotationSpec\x12\x30.google.cloud.automl.v1.GetAnnotationSpecRequest\x1a&.google.cloud.automl.v1.AnnotationSpec\"M\xda\x41\x04name\x82\xd3\xe4\x93\x02@\x12>/v1/{name=projects/*/locations/*/datasets/*/annotationSpecs/*}\x12\xbf\x01\n\x0b\x43reateModel\x12*.google.cloud.automl.v1.CreateModelRequest\x1a\x1d.google.longrunning.Operation\"e\xca\x41\x1a\n\x05Model\x12\x11OperationMetadata\xda\x41\x0cparent,model\x82\xd3\xe4\x93\x02\x33\"*/v1/{parent=projects/*/locations/*}/models:\x05model\x12\x8d\x01\n\x08GetModel\x12\'.google.cloud.automl.v1.GetModelRequest\x1a\x1d.google.cloud.automl.v1.Model\"9\xda\x41\x04name\x82\xd3\xe4\x93\x02,\x12*/v1/{name=projects/*/locations/*/models/*}\x12\xa0\x01\n\nListModels\x12).google.cloud.automl.v1.ListModelsRequest\x1a*.google.cloud.automl.v1.ListModelsResponse\";\xda\x41\x06parent\x82\xd3\xe4\x93\x02,\x12*/v1/{parent=projects/*/locations/*}/models\x12\xc0\x01\n\x0b\x44\x65leteModel\x12*.google.cloud.automl.v1.DeleteModelRequest\x1a\x1d.google.longrunning.Operation\"f\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02,**/v1/{name=projects/*/locations/*/models/*}\x12\xad\x01\n\x0bUpdateModel\x12*.google.cloud.automl.v1.UpdateModelRequest\x1a\x1d.google.cloud.automl.v1.Model\"S\xda\x41\x11model,update_mask\x82\xd3\xe4\x93\x02\x39\x32\x30/v1/{model.name=projects/*/locations/*/models/*}:\x05model\x12\xca\x01\n\x0b\x44\x65ployModel\x12*.google.cloud.automl.v1.DeployModelRequest\x1a\x1d.google.longrunning.Operation\"p\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x36\"1/v1/{name=projects/*/locations/*/models/*}:deploy:\x01*\x12\xd0\x01\n\rUndeployModel\x12,.google.cloud.automl.v1.UndeployModelRequest\x1a\x1d.google.longrunning.Operation\"r\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x04name\x82\xd3\xe4\x93\x02\x38\"3/v1/{name=projects/*/locations/*/models/*}:undeploy:\x01*\x12\xd8\x01\n\x0b\x45xportModel\x12*.google.cloud.automl.v1.ExportModelRequest\x1a\x1d.google.longrunning.Operation\"~\xca\x41*\n\x15google.protobuf.Empty\x12\x11OperationMetadata\xda\x41\x12name,output_config\x82\xd3\xe4\x93\x02\x36\"1/v1/{name=projects/*/locations/*/models/*}:export:\x01*\x12\xbe\x01\n\x12GetModelEvaluation\x12\x31.google.cloud.automl.v1.GetModelEvaluationRequest\x1a\'.google.cloud.automl.v1.ModelEvaluation\"L\xda\x41\x04name\x82\xd3\xe4\x93\x02?\x12=/v1/{name=projects/*/locations/*/models/*/modelEvaluations/*}\x12\xd8\x01\n\x14ListModelEvaluations\x12\x33.google.cloud.automl.v1.ListModelEvaluationsRequest\x1a\x34.google.cloud.automl.v1.ListModelEvaluationsResponse\"U\xda\x41\rparent,filter\x82\xd3\xe4\x93\x02?\x12=/v1/{parent=projects/*/locations/*/models/*}/modelEvaluations\x1aI\xca\x41\x15\x61utoml.googleapis.com\xd2\x41.https://www.googleapis.com/auth/cloud-platformB\xad\x01\n\x1a\x63om.google.cloud.automl.v1B\x0b\x41utoMlProtoP\x01Z2cloud.google.com/go/automl/apiv1/automlpb;automlpb\xaa\x02\x16Google.Cloud.AutoML.V1\xca\x02\x16Google\\Cloud\\AutoMl\\V1\xea\x02\x19Google::Cloud::AutoML::V1b\x06proto3"

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
    ["google.cloud.automl.v1.Dataset", "google/cloud/automl/v1/dataset.proto"],
    ["google.protobuf.FieldMask", "google/protobuf/field_mask.proto"],
    ["google.cloud.automl.v1.InputConfig", "google/cloud/automl/v1/io.proto"],
    ["google.cloud.automl.v1.Model", "google/cloud/automl/v1/model.proto"],
    ["google.cloud.automl.v1.ImageObjectDetectionModelDeploymentMetadata", "google/cloud/automl/v1/image.proto"],
    ["google.cloud.automl.v1.ModelEvaluation", "google/cloud/automl/v1/model_evaluation.proto"],
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
    module AutoML
      module V1
        CreateDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.CreateDatasetRequest").msgclass
        GetDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.GetDatasetRequest").msgclass
        ListDatasetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ListDatasetsRequest").msgclass
        ListDatasetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ListDatasetsResponse").msgclass
        UpdateDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.UpdateDatasetRequest").msgclass
        DeleteDatasetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.DeleteDatasetRequest").msgclass
        ImportDataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ImportDataRequest").msgclass
        ExportDataRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ExportDataRequest").msgclass
        GetAnnotationSpecRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.GetAnnotationSpecRequest").msgclass
        CreateModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.CreateModelRequest").msgclass
        GetModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.GetModelRequest").msgclass
        ListModelsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ListModelsRequest").msgclass
        ListModelsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ListModelsResponse").msgclass
        DeleteModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.DeleteModelRequest").msgclass
        UpdateModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.UpdateModelRequest").msgclass
        DeployModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.DeployModelRequest").msgclass
        UndeployModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.UndeployModelRequest").msgclass
        ExportModelRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ExportModelRequest").msgclass
        GetModelEvaluationRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.GetModelEvaluationRequest").msgclass
        ListModelEvaluationsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ListModelEvaluationsRequest").msgclass
        ListModelEvaluationsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.automl.v1.ListModelEvaluationsResponse").msgclass
      end
    end
  end
end

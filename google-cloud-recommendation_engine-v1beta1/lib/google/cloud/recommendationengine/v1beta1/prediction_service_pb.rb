# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/recommendationengine/v1beta1/prediction_service.proto

require 'google/api/annotations_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/recommendationengine/v1beta1/user_event_pb'
require 'google/protobuf/struct_pb'
require 'google/api/client_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/recommendationengine/v1beta1/prediction_service.proto", :syntax => :proto3) do
    add_message "google.cloud.recommendationengine.v1beta1.PredictRequest" do
      optional :name, :string, 1
      optional :user_event, :message, 2, "google.cloud.recommendationengine.v1beta1.UserEvent"
      optional :page_size, :int32, 7
      optional :page_token, :string, 8
      optional :filter, :string, 3
      optional :dry_run, :bool, 4
      map :params, :string, :message, 6, "google.protobuf.Value"
      map :labels, :string, :string, 9
    end
    add_message "google.cloud.recommendationengine.v1beta1.PredictResponse" do
      repeated :results, :message, 1, "google.cloud.recommendationengine.v1beta1.PredictResponse.PredictionResult"
      optional :recommendation_token, :string, 2
      repeated :items_missing_in_catalog, :string, 3
      optional :dry_run, :bool, 4
      map :metadata, :string, :message, 5, "google.protobuf.Value"
      optional :next_page_token, :string, 6
    end
    add_message "google.cloud.recommendationengine.v1beta1.PredictResponse.PredictionResult" do
      optional :id, :string, 1
      map :item_metadata, :string, :message, 2, "google.protobuf.Value"
    end
  end
end

module Google
  module Cloud
    module RecommendationEngine
      module V1beta1
        PredictRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.PredictRequest").msgclass
        PredictResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.PredictResponse").msgclass
        PredictResponse::PredictionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.recommendationengine.v1beta1.PredictResponse.PredictionResult").msgclass
      end
    end
  end
end

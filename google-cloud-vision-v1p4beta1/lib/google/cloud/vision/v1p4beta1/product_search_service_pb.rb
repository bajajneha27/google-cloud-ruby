# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/vision/v1p4beta1/product_search_service.proto

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/vision/v1p4beta1/geometry_pb'
require 'google/longrunning/operations_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'
require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/vision/v1p4beta1/product_search_service.proto", :syntax => :proto3) do
    add_message "google.cloud.vision.v1p4beta1.Product" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :description, :string, 3
      optional :product_category, :string, 4
      repeated :product_labels, :message, 5, "google.cloud.vision.v1p4beta1.Product.KeyValue"
    end
    add_message "google.cloud.vision.v1p4beta1.Product.KeyValue" do
      optional :key, :string, 1
      optional :value, :string, 2
    end
    add_message "google.cloud.vision.v1p4beta1.ProductSet" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :index_time, :message, 3, "google.protobuf.Timestamp"
      optional :index_error, :message, 4, "google.rpc.Status"
    end
    add_message "google.cloud.vision.v1p4beta1.ReferenceImage" do
      optional :name, :string, 1
      optional :uri, :string, 2
      repeated :bounding_polys, :message, 3, "google.cloud.vision.v1p4beta1.BoundingPoly"
    end
    add_message "google.cloud.vision.v1p4beta1.CreateProductRequest" do
      optional :parent, :string, 1
      optional :product, :message, 2, "google.cloud.vision.v1p4beta1.Product"
      optional :product_id, :string, 3
    end
    add_message "google.cloud.vision.v1p4beta1.ListProductsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.vision.v1p4beta1.ListProductsResponse" do
      repeated :products, :message, 1, "google.cloud.vision.v1p4beta1.Product"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.vision.v1p4beta1.GetProductRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.vision.v1p4beta1.UpdateProductRequest" do
      optional :product, :message, 1, "google.cloud.vision.v1p4beta1.Product"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.vision.v1p4beta1.DeleteProductRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.vision.v1p4beta1.CreateProductSetRequest" do
      optional :parent, :string, 1
      optional :product_set, :message, 2, "google.cloud.vision.v1p4beta1.ProductSet"
      optional :product_set_id, :string, 3
    end
    add_message "google.cloud.vision.v1p4beta1.ListProductSetsRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.vision.v1p4beta1.ListProductSetsResponse" do
      repeated :product_sets, :message, 1, "google.cloud.vision.v1p4beta1.ProductSet"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.vision.v1p4beta1.GetProductSetRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.vision.v1p4beta1.UpdateProductSetRequest" do
      optional :product_set, :message, 1, "google.cloud.vision.v1p4beta1.ProductSet"
      optional :update_mask, :message, 2, "google.protobuf.FieldMask"
    end
    add_message "google.cloud.vision.v1p4beta1.DeleteProductSetRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.vision.v1p4beta1.CreateReferenceImageRequest" do
      optional :parent, :string, 1
      optional :reference_image, :message, 2, "google.cloud.vision.v1p4beta1.ReferenceImage"
      optional :reference_image_id, :string, 3
    end
    add_message "google.cloud.vision.v1p4beta1.ListReferenceImagesRequest" do
      optional :parent, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.vision.v1p4beta1.ListReferenceImagesResponse" do
      repeated :reference_images, :message, 1, "google.cloud.vision.v1p4beta1.ReferenceImage"
      optional :page_size, :int32, 2
      optional :next_page_token, :string, 3
    end
    add_message "google.cloud.vision.v1p4beta1.GetReferenceImageRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.vision.v1p4beta1.DeleteReferenceImageRequest" do
      optional :name, :string, 1
    end
    add_message "google.cloud.vision.v1p4beta1.AddProductToProductSetRequest" do
      optional :name, :string, 1
      optional :product, :string, 2
    end
    add_message "google.cloud.vision.v1p4beta1.RemoveProductFromProductSetRequest" do
      optional :name, :string, 1
      optional :product, :string, 2
    end
    add_message "google.cloud.vision.v1p4beta1.ListProductsInProductSetRequest" do
      optional :name, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
    end
    add_message "google.cloud.vision.v1p4beta1.ListProductsInProductSetResponse" do
      repeated :products, :message, 1, "google.cloud.vision.v1p4beta1.Product"
      optional :next_page_token, :string, 2
    end
    add_message "google.cloud.vision.v1p4beta1.ImportProductSetsGcsSource" do
      optional :csv_file_uri, :string, 1
    end
    add_message "google.cloud.vision.v1p4beta1.ImportProductSetsInputConfig" do
      oneof :source do
        optional :gcs_source, :message, 1, "google.cloud.vision.v1p4beta1.ImportProductSetsGcsSource"
      end
    end
    add_message "google.cloud.vision.v1p4beta1.ImportProductSetsRequest" do
      optional :parent, :string, 1
      optional :input_config, :message, 2, "google.cloud.vision.v1p4beta1.ImportProductSetsInputConfig"
    end
    add_message "google.cloud.vision.v1p4beta1.ImportProductSetsResponse" do
      repeated :reference_images, :message, 1, "google.cloud.vision.v1p4beta1.ReferenceImage"
      repeated :statuses, :message, 2, "google.rpc.Status"
    end
    add_message "google.cloud.vision.v1p4beta1.BatchOperationMetadata" do
      optional :state, :enum, 1, "google.cloud.vision.v1p4beta1.BatchOperationMetadata.State"
      optional :submit_time, :message, 2, "google.protobuf.Timestamp"
      optional :end_time, :message, 3, "google.protobuf.Timestamp"
    end
    add_enum "google.cloud.vision.v1p4beta1.BatchOperationMetadata.State" do
      value :STATE_UNSPECIFIED, 0
      value :PROCESSING, 1
      value :SUCCESSFUL, 2
      value :FAILED, 3
      value :CANCELLED, 4
    end
    add_message "google.cloud.vision.v1p4beta1.ProductSetPurgeConfig" do
      optional :product_set_id, :string, 1
    end
    add_message "google.cloud.vision.v1p4beta1.PurgeProductsRequest" do
      optional :parent, :string, 1
      optional :force, :bool, 4
      oneof :target do
        optional :product_set_purge_config, :message, 2, "google.cloud.vision.v1p4beta1.ProductSetPurgeConfig"
        optional :delete_orphan_products, :bool, 3
      end
    end
  end
end

module Google
  module Cloud
    module Vision
      module V1p4beta1
        Product = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.Product").msgclass
        Product::KeyValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.Product.KeyValue").msgclass
        ProductSet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ProductSet").msgclass
        ReferenceImage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ReferenceImage").msgclass
        CreateProductRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.CreateProductRequest").msgclass
        ListProductsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ListProductsRequest").msgclass
        ListProductsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ListProductsResponse").msgclass
        GetProductRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.GetProductRequest").msgclass
        UpdateProductRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.UpdateProductRequest").msgclass
        DeleteProductRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.DeleteProductRequest").msgclass
        CreateProductSetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.CreateProductSetRequest").msgclass
        ListProductSetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ListProductSetsRequest").msgclass
        ListProductSetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ListProductSetsResponse").msgclass
        GetProductSetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.GetProductSetRequest").msgclass
        UpdateProductSetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.UpdateProductSetRequest").msgclass
        DeleteProductSetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.DeleteProductSetRequest").msgclass
        CreateReferenceImageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.CreateReferenceImageRequest").msgclass
        ListReferenceImagesRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ListReferenceImagesRequest").msgclass
        ListReferenceImagesResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ListReferenceImagesResponse").msgclass
        GetReferenceImageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.GetReferenceImageRequest").msgclass
        DeleteReferenceImageRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.DeleteReferenceImageRequest").msgclass
        AddProductToProductSetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.AddProductToProductSetRequest").msgclass
        RemoveProductFromProductSetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.RemoveProductFromProductSetRequest").msgclass
        ListProductsInProductSetRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ListProductsInProductSetRequest").msgclass
        ListProductsInProductSetResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ListProductsInProductSetResponse").msgclass
        ImportProductSetsGcsSource = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ImportProductSetsGcsSource").msgclass
        ImportProductSetsInputConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ImportProductSetsInputConfig").msgclass
        ImportProductSetsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ImportProductSetsRequest").msgclass
        ImportProductSetsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ImportProductSetsResponse").msgclass
        BatchOperationMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.BatchOperationMetadata").msgclass
        BatchOperationMetadata::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.BatchOperationMetadata.State").enummodule
        ProductSetPurgeConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.ProductSetPurgeConfig").msgclass
        PurgeProductsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1p4beta1.PurgeProductsRequest").msgclass
      end
    end
  end
end

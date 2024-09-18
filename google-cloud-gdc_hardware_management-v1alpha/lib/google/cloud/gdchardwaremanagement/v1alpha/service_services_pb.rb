# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/gdchardwaremanagement/v1alpha/service.proto for package 'Google.Cloud.GDCHardwareManagement.V1alpha'
# Original file comments:
# Copyright 2024 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/gdchardwaremanagement/v1alpha/service_pb'

module Google
  module Cloud
    module GDCHardwareManagement
      module V1alpha
        module GDCHardwareManagement
          # The GDC Hardware Management service.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.gdchardwaremanagement.v1alpha.GDCHardwareManagement'

            # Lists orders in a given project and location.
            rpc :ListOrders, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListOrdersRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListOrdersResponse
            # Gets details of an order.
            rpc :GetOrder, ::Google::Cloud::GDCHardwareManagement::V1alpha::GetOrderRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::Order
            # Creates a new order in a given project and location.
            rpc :CreateOrder, ::Google::Cloud::GDCHardwareManagement::V1alpha::CreateOrderRequest, ::Google::Longrunning::Operation
            # Updates the parameters of an order.
            rpc :UpdateOrder, ::Google::Cloud::GDCHardwareManagement::V1alpha::UpdateOrderRequest, ::Google::Longrunning::Operation
            # Deletes an order.
            rpc :DeleteOrder, ::Google::Cloud::GDCHardwareManagement::V1alpha::DeleteOrderRequest, ::Google::Longrunning::Operation
            # Submits an order.
            rpc :SubmitOrder, ::Google::Cloud::GDCHardwareManagement::V1alpha::SubmitOrderRequest, ::Google::Longrunning::Operation
            # Lists sites in a given project and location.
            rpc :ListSites, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListSitesRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListSitesResponse
            # Gets details of a site.
            rpc :GetSite, ::Google::Cloud::GDCHardwareManagement::V1alpha::GetSiteRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::Site
            # Creates a new site in a given project and location.
            rpc :CreateSite, ::Google::Cloud::GDCHardwareManagement::V1alpha::CreateSiteRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a site.
            rpc :UpdateSite, ::Google::Cloud::GDCHardwareManagement::V1alpha::UpdateSiteRequest, ::Google::Longrunning::Operation
            # Lists hardware groups in a given order.
            rpc :ListHardwareGroups, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListHardwareGroupsRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListHardwareGroupsResponse
            # Gets details of a hardware group.
            rpc :GetHardwareGroup, ::Google::Cloud::GDCHardwareManagement::V1alpha::GetHardwareGroupRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::HardwareGroup
            # Creates a new hardware group in a given order.
            rpc :CreateHardwareGroup, ::Google::Cloud::GDCHardwareManagement::V1alpha::CreateHardwareGroupRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a hardware group.
            rpc :UpdateHardwareGroup, ::Google::Cloud::GDCHardwareManagement::V1alpha::UpdateHardwareGroupRequest, ::Google::Longrunning::Operation
            # Deletes a hardware group.
            rpc :DeleteHardwareGroup, ::Google::Cloud::GDCHardwareManagement::V1alpha::DeleteHardwareGroupRequest, ::Google::Longrunning::Operation
            # Lists hardware in a given project and location.
            rpc :ListHardware, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListHardwareRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListHardwareResponse
            # Gets hardware details.
            rpc :GetHardware, ::Google::Cloud::GDCHardwareManagement::V1alpha::GetHardwareRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::Hardware
            # Creates new hardware in a given project and location.
            rpc :CreateHardware, ::Google::Cloud::GDCHardwareManagement::V1alpha::CreateHardwareRequest, ::Google::Longrunning::Operation
            # Updates hardware parameters.
            rpc :UpdateHardware, ::Google::Cloud::GDCHardwareManagement::V1alpha::UpdateHardwareRequest, ::Google::Longrunning::Operation
            # Deletes hardware.
            rpc :DeleteHardware, ::Google::Cloud::GDCHardwareManagement::V1alpha::DeleteHardwareRequest, ::Google::Longrunning::Operation
            # Lists the comments on an order.
            rpc :ListComments, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListCommentsRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListCommentsResponse
            # Gets the content of a comment.
            rpc :GetComment, ::Google::Cloud::GDCHardwareManagement::V1alpha::GetCommentRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::Comment
            # Creates a new comment on an order.
            rpc :CreateComment, ::Google::Cloud::GDCHardwareManagement::V1alpha::CreateCommentRequest, ::Google::Longrunning::Operation
            # Record Action on a Comment. If the Action specified in the request is READ,
            # the viewed time in the comment is set to the time the request was received.
            # If the comment is already marked as read, subsequent calls will be ignored.
            # If the Action is UNREAD, the viewed time is cleared from the comment.
            rpc :RecordActionOnComment, ::Google::Cloud::GDCHardwareManagement::V1alpha::RecordActionOnCommentRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::Comment
            # Lists the changes made to an order.
            rpc :ListChangeLogEntries, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListChangeLogEntriesRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListChangeLogEntriesResponse
            # Gets details of a change to an order.
            rpc :GetChangeLogEntry, ::Google::Cloud::GDCHardwareManagement::V1alpha::GetChangeLogEntryRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::ChangeLogEntry
            # Lists SKUs for a given project and location.
            rpc :ListSkus, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListSkusRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListSkusResponse
            # Gets details of an SKU.
            rpc :GetSku, ::Google::Cloud::GDCHardwareManagement::V1alpha::GetSkuRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::Sku
            # Lists zones in a given project and location.
            rpc :ListZones, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListZonesRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::ListZonesResponse
            # Gets details of a zone.
            rpc :GetZone, ::Google::Cloud::GDCHardwareManagement::V1alpha::GetZoneRequest, ::Google::Cloud::GDCHardwareManagement::V1alpha::Zone
            # Creates a new zone in a given project and location.
            rpc :CreateZone, ::Google::Cloud::GDCHardwareManagement::V1alpha::CreateZoneRequest, ::Google::Longrunning::Operation
            # Updates the parameters of a zone.
            rpc :UpdateZone, ::Google::Cloud::GDCHardwareManagement::V1alpha::UpdateZoneRequest, ::Google::Longrunning::Operation
            # Deletes a zone.
            rpc :DeleteZone, ::Google::Cloud::GDCHardwareManagement::V1alpha::DeleteZoneRequest, ::Google::Longrunning::Operation
            # Signals the state of a zone.
            rpc :SignalZoneState, ::Google::Cloud::GDCHardwareManagement::V1alpha::SignalZoneStateRequest, ::Google::Longrunning::Operation
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end

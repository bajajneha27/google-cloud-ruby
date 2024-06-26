# frozen_string_literal: true

# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module Retail
      module V2
        # Request for
        # {::Google::Cloud::Retail::V2::CatalogService::Client#list_catalogs CatalogService.ListCatalogs}
        # method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The account resource name with an associated location.
        #
        #     If the caller does not have permission to list
        #     {::Google::Cloud::Retail::V2::Catalog Catalog}s under this location, regardless
        #     of whether or not this location exists, a PERMISSION_DENIED error is
        #     returned.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of {::Google::Cloud::Retail::V2::Catalog Catalog}s to return. If
        #     unspecified, defaults to 50. The maximum allowed value is 1000. Values
        #     above 1000 will be coerced to 1000.
        #
        #     If this field is negative, an INVALID_ARGUMENT is returned.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     A page token
        #     {::Google::Cloud::Retail::V2::ListCatalogsResponse#next_page_token ListCatalogsResponse.next_page_token},
        #     received from a previous
        #     {::Google::Cloud::Retail::V2::CatalogService::Client#list_catalogs CatalogService.ListCatalogs}
        #     call. Provide this to retrieve the subsequent page.
        #
        #     When paginating, all other parameters provided to
        #     {::Google::Cloud::Retail::V2::CatalogService::Client#list_catalogs CatalogService.ListCatalogs}
        #     must match the call that provided the page token. Otherwise, an
        #     INVALID_ARGUMENT error is returned.
        class ListCatalogsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for
        # {::Google::Cloud::Retail::V2::CatalogService::Client#list_catalogs CatalogService.ListCatalogs}
        # method.
        # @!attribute [rw] catalogs
        #   @return [::Array<::Google::Cloud::Retail::V2::Catalog>]
        #     All the customer's {::Google::Cloud::Retail::V2::Catalog Catalog}s.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     A token that can be sent as
        #     {::Google::Cloud::Retail::V2::ListCatalogsRequest#page_token ListCatalogsRequest.page_token}
        #     to retrieve the next page. If this field is omitted, there are no
        #     subsequent pages.
        class ListCatalogsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for
        # {::Google::Cloud::Retail::V2::CatalogService::Client#update_catalog CatalogService.UpdateCatalog}
        # method.
        # @!attribute [rw] catalog
        #   @return [::Google::Cloud::Retail::V2::Catalog]
        #     Required. The {::Google::Cloud::Retail::V2::Catalog Catalog} to update.
        #
        #     If the caller does not have permission to update the
        #     {::Google::Cloud::Retail::V2::Catalog Catalog}, regardless of whether or not it
        #     exists, a PERMISSION_DENIED error is returned.
        #
        #     If the {::Google::Cloud::Retail::V2::Catalog Catalog} to update does not exist,
        #     a NOT_FOUND error is returned.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Indicates which fields in the provided
        #     {::Google::Cloud::Retail::V2::Catalog Catalog} to update.
        #
        #     If an unsupported or unknown field is provided, an INVALID_ARGUMENT error
        #     is returned.
        class UpdateCatalogRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message to set a specified branch as new default_branch.
        # @!attribute [rw] catalog
        #   @return [::String]
        #     Full resource name of the catalog, such as
        #     `projects/*/locations/global/catalogs/default_catalog`.
        # @!attribute [rw] branch_id
        #   @return [::String]
        #     The final component of the resource name of a branch.
        #
        #     This field must be one of "0", "1" or "2". Otherwise, an INVALID_ARGUMENT
        #     error is returned.
        # @!attribute [rw] note
        #   @return [::String]
        #     Some note on this request, this can be retrieved by
        #     {::Google::Cloud::Retail::V2::CatalogService::Client#get_default_branch CatalogService.GetDefaultBranch}
        #     before next valid default branch set occurs.
        #
        #     This field must be a UTF-8 encoded string with a length limit of 1,000
        #     characters. Otherwise, an INVALID_ARGUMENT error is returned.
        class SetDefaultBranchRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request message to show which branch is currently the default branch.
        # @!attribute [rw] catalog
        #   @return [::String]
        #     The parent catalog resource name, such as
        #     `projects/*/locations/global/catalogs/default_catalog`.
        class GetDefaultBranchRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response message of
        # {::Google::Cloud::Retail::V2::CatalogService::Client#get_default_branch CatalogService.GetDefaultBranch}.
        # @!attribute [rw] branch
        #   @return [::String]
        #     Full resource name of the branch id currently set as default branch.
        # @!attribute [rw] set_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when this branch is set to default.
        # @!attribute [rw] note
        #   @return [::String]
        #     This corresponds to
        #     {::Google::Cloud::Retail::V2::SetDefaultBranchRequest#note SetDefaultBranchRequest.note}
        #     field, when this branch was set as default.
        class GetDefaultBranchResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

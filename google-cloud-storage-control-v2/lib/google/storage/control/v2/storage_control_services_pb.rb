# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/storage/control/v2/storage_control.proto for package 'Google.Cloud.Storage.Control.V2'
# Original file comments:
# Copyright 2023 Google LLC
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
require 'google/storage/control/v2/storage_control_pb'

module Google
  module Cloud
    module Storage
      module Control
        module V2
          module StorageControl
            # StorageControl service includes selected control plane operations.
            class Service

              include ::GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.storage.control.v2.StorageControl'

              # Creates a new folder. This operation is only applicable to a hierarchical
              # namespace enabled bucket.
              # Hierarchical namespace buckets are in allowlist preview.
              rpc :CreateFolder, ::Google::Cloud::Storage::Control::V2::CreateFolderRequest, ::Google::Cloud::Storage::Control::V2::Folder
              # Permanently deletes an empty folder. This operation is only applicable to a
              # hierarchical namespace enabled bucket.
              # Hierarchical namespace buckets are in allowlist preview.
              rpc :DeleteFolder, ::Google::Cloud::Storage::Control::V2::DeleteFolderRequest, ::Google::Protobuf::Empty
              # Returns metadata for the specified folder. This operation is only
              # applicable to a hierarchical namespace enabled bucket.
              # Hierarchical namespace buckets are in allowlist preview.
              rpc :GetFolder, ::Google::Cloud::Storage::Control::V2::GetFolderRequest, ::Google::Cloud::Storage::Control::V2::Folder
              # Retrieves a list of folders. This operation is only applicable to a
              # hierarchical namespace enabled bucket.
              # Hierarchical namespace buckets are in allowlist preview.
              rpc :ListFolders, ::Google::Cloud::Storage::Control::V2::ListFoldersRequest, ::Google::Cloud::Storage::Control::V2::ListFoldersResponse
              # Renames a source folder to a destination folder. This operation is only
              # applicable to a hierarchical namespace enabled bucket. During a rename, the
              # source and destination folders are locked until the long running operation
              # completes.
              # Hierarchical namespace buckets are in allowlist preview.
              rpc :RenameFolder, ::Google::Cloud::Storage::Control::V2::RenameFolderRequest, ::Google::Longrunning::Operation
              # Returns the storage layout configuration for a given bucket.
              rpc :GetStorageLayout, ::Google::Cloud::Storage::Control::V2::GetStorageLayoutRequest, ::Google::Cloud::Storage::Control::V2::StorageLayout
              # Creates a new managed folder.
              rpc :CreateManagedFolder, ::Google::Cloud::Storage::Control::V2::CreateManagedFolderRequest, ::Google::Cloud::Storage::Control::V2::ManagedFolder
              # Permanently deletes an empty managed folder.
              rpc :DeleteManagedFolder, ::Google::Cloud::Storage::Control::V2::DeleteManagedFolderRequest, ::Google::Protobuf::Empty
              # Returns metadata for the specified managed folder.
              rpc :GetManagedFolder, ::Google::Cloud::Storage::Control::V2::GetManagedFolderRequest, ::Google::Cloud::Storage::Control::V2::ManagedFolder
              # Retrieves a list of managed folders for a given bucket.
              rpc :ListManagedFolders, ::Google::Cloud::Storage::Control::V2::ListManagedFoldersRequest, ::Google::Cloud::Storage::Control::V2::ListManagedFoldersResponse
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end

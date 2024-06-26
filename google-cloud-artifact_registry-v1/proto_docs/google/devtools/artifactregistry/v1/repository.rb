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
    module ArtifactRegistry
      module V1
        # A Repository for storing artifacts with a specific format.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of the repository, for example:
        #     "projects/p1/locations/us-central1/repositories/repo1".
        # @!attribute [rw] format
        #   @return [::Google::Cloud::ArtifactRegistry::V1::Repository::Format]
        #     The format of packages that are stored in the repository.
        # @!attribute [rw] description
        #   @return [::String]
        #     The user-provided description of the repository.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels with user-defined metadata.
        #     This field may contain up to 64 entries. Label keys and values may be no
        #     longer than 63 characters. Label keys must begin with a lowercase letter
        #     and may only contain lowercase letters, numeric characters, underscores,
        #     and dashes.
        # @!attribute [rw] create_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the repository was created.
        # @!attribute [rw] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     The time when the repository was last updated.
        # @!attribute [rw] kms_key_name
        #   @return [::String]
        #     The Cloud KMS resource name of the customer managed encryption key that’s
        #     used to encrypt the contents of the Repository. Has the form:
        #     `projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key`.
        #     This value may not be changed after the Repository has been created.
        class Repository
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class LabelsEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A package format.
          module Format
            # Unspecified package format.
            FORMAT_UNSPECIFIED = 0

            # Docker package format.
            DOCKER = 1

            # Maven package format.
            MAVEN = 2

            # NPM package format.
            NPM = 3

            # APT package format.
            APT = 5

            # YUM package format.
            YUM = 6

            # Python package format.
            PYTHON = 8
          end
        end

        # The request to list repositories.
        # @!attribute [rw] parent
        #   @return [::String]
        #     Required. The name of the parent resource whose repositories will be listed.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     The maximum number of repositories to return.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The next_page_token value returned from a previous list request, if any.
        class ListRepositoriesRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The response from listing repositories.
        # @!attribute [rw] repositories
        #   @return [::Array<::Google::Cloud::ArtifactRegistry::V1::Repository>]
        #     The repositories returned.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     The token to retrieve the next page of repositories, or empty if there are
        #     no more repositories to return.
        class ListRepositoriesResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # The request to retrieve a repository.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the repository to retrieve.
        class GetRepositoryRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end
      end
    end
  end
end

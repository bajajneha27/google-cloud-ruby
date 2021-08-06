# frozen_string_literal: true

# Copyright 2020 Google LLC
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
    module Functions
      module V1
        # Describes a Cloud Function that contains user computation executed in
        # response to an event. It encapsulate function and triggers configurations.
        # @!attribute [rw] name
        #   @return [::String]
        #     A user-defined name of the function. Function names must be unique
        #     globally and match pattern `projects/*/locations/*/functions/*`
        # @!attribute [rw] description
        #   @return [::String]
        #     User-provided description of a function.
        # @!attribute [rw] source_archive_url
        #   @return [::String]
        #     The Google Cloud Storage URL, starting with gs://, pointing to the zip
        #     archive which contains the function.
        # @!attribute [rw] source_repository
        #   @return [::Google::Cloud::Functions::V1::SourceRepository]
        #     **Beta Feature**
        #
        #     The source repository where a function is hosted.
        # @!attribute [rw] source_upload_url
        #   @return [::String]
        #     The Google Cloud Storage signed URL used for source uploading, generated
        #     by calling [google.cloud.functions.v1.GenerateUploadUrl].
        #
        #     The signature is validated on write methods \\{Create, Update}
        #     The signature is stripped from the Function object on read methods {Get,
        #     List}
        # @!attribute [rw] https_trigger
        #   @return [::Google::Cloud::Functions::V1::HttpsTrigger]
        #     An HTTPS endpoint type of source that can be triggered via URL.
        # @!attribute [rw] event_trigger
        #   @return [::Google::Cloud::Functions::V1::EventTrigger]
        #     A source that fires events in response to a condition in another service.
        # @!attribute [r] status
        #   @return [::Google::Cloud::Functions::V1::CloudFunctionStatus]
        #     Output only. Status of the function deployment.
        # @!attribute [rw] entry_point
        #   @return [::String]
        #     The name of the function (as defined in source code) that will be
        #     executed. Defaults to the resource name suffix, if not specified. For
        #     backward compatibility, if function with given name is not found, then the
        #     system will try to use function named "function".
        #     For Node.js this is name of a function exported by the module specified
        #     in `source_location`.
        # @!attribute [rw] runtime
        #   @return [::String]
        #     The runtime in which to run the function. Required when deploying a new
        #     function, optional when updating an existing function. For a complete
        #     list of possible choices, see the
        #     [`gcloud` command
        #     reference](/sdk/gcloud/reference/functions/deploy#--runtime).
        # @!attribute [rw] timeout
        #   @return [::Google::Protobuf::Duration]
        #     The function execution timeout. Execution is considered failed and
        #     can be terminated if the function is not completed at the end of the
        #     timeout period. Defaults to 60 seconds.
        # @!attribute [rw] available_memory_mb
        #   @return [::Integer]
        #     The amount of memory in MB available for a function.
        #     Defaults to 256MB.
        # @!attribute [rw] service_account_email
        #   @return [::String]
        #     The email of the function's service account. If empty, defaults to
        #     `{project_id}@appspot.gserviceaccount.com`.
        # @!attribute [r] update_time
        #   @return [::Google::Protobuf::Timestamp]
        #     Output only. The last update timestamp of a Cloud Function.
        # @!attribute [r] version_id
        #   @return [::Integer]
        #     Output only. The version identifier of the Cloud Function. Each deployment attempt
        #     results in a new version of a function being created.
        # @!attribute [rw] labels
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Labels associated with this Cloud Function.
        # @!attribute [rw] environment_variables
        #   @return [::Google::Protobuf::Map{::String => ::String}]
        #     Environment variables that shall be available during function execution.
        # @!attribute [rw] network
        #   @return [::String]
        #     The VPC Network that this cloud function can connect to. It can be
        #     either the fully-qualified URI, or the short name of the network resource.
        #     If the short network name is used, the network must belong to the same
        #     project. Otherwise, it must belong to a project within the same
        #     organization. The format of this field is either
        #     `projects/{project}/global/networks/{network}` or `{network}`, where
        #     \\{project} is a project id where the network is defined, and \\{network} is
        #     the short name of the network.
        #
        #     This field is mutually exclusive with `vpc_connector` and will be replaced
        #     by it.
        #
        #     See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for
        #     more information on connecting Cloud projects.
        # @!attribute [rw] max_instances
        #   @return [::Integer]
        #     The limit on the maximum number of function instances that may coexist at a
        #     given time.
        # @!attribute [rw] vpc_connector
        #   @return [::String]
        #     The VPC Network Connector that this cloud function can connect to. It can
        #     be either the fully-qualified URI, or the short name of the network
        #     connector resource. The format of this field is
        #     `projects/*/locations/*/connectors/*`
        #
        #     This field is mutually exclusive with `network` field and will eventually
        #     replace it.
        #
        #     See [the VPC documentation](https://cloud.google.com/compute/docs/vpc) for
        #     more information on connecting Cloud projects.
        # @!attribute [rw] vpc_connector_egress_settings
        #   @return [::Google::Cloud::Functions::V1::CloudFunction::VpcConnectorEgressSettings]
        #     The egress settings for the connector, controlling what traffic is diverted
        #     through it.
        # @!attribute [rw] ingress_settings
        #   @return [::Google::Cloud::Functions::V1::CloudFunction::IngressSettings]
        #     The ingress settings for the function, controlling what traffic can reach
        #     it.
        # @!attribute [r] build_id
        #   @return [::String]
        #     Output only. The Cloud Build ID of the latest successful deployment of the
        #     function.
        class CloudFunction
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

          # @!attribute [rw] key
          #   @return [::String]
          # @!attribute [rw] value
          #   @return [::String]
          class EnvironmentVariablesEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # Available egress settings.
          #
          # This controls what traffic is diverted through the VPC Access Connector
          # resource. By default PRIVATE_RANGES_ONLY will be used.
          module VpcConnectorEgressSettings
            # Unspecified.
            VPC_CONNECTOR_EGRESS_SETTINGS_UNSPECIFIED = 0

            # Use the VPC Access Connector only for private IP space from RFC1918.
            PRIVATE_RANGES_ONLY = 1

            # Force the use of VPC Access Connector for all egress traffic from the
            # function.
            ALL_TRAFFIC = 2
          end

          # Available ingress settings.
          #
          # This controls what traffic can reach the function.
          #
          # If unspecified, ALLOW_ALL will be used.
          module IngressSettings
            # Unspecified.
            INGRESS_SETTINGS_UNSPECIFIED = 0

            # Allow HTTP traffic from public and private sources.
            ALLOW_ALL = 1

            # Allow HTTP traffic from only private VPC sources.
            ALLOW_INTERNAL_ONLY = 2

            # Allow HTTP traffic from private VPC sources and through GCLB.
            ALLOW_INTERNAL_AND_GCLB = 3
          end
        end

        # Describes SourceRepository, used to represent parameters related to
        # source repository where a function is hosted.
        # @!attribute [rw] url
        #   @return [::String]
        #     The URL pointing to the hosted repository where the function is defined.
        #     There are supported Cloud Source Repository URLs in the following
        #     formats:
        #
        #     To refer to a specific commit:
        #     `https://source.developers.google.com/projects/*/repos/*/revisions/*/paths/*`
        #     To refer to a moveable alias (branch):
        #     `https://source.developers.google.com/projects/*/repos/*/moveable-aliases/*/paths/*`
        #     In particular, to refer to HEAD use `master` moveable alias.
        #     To refer to a specific fixed alias (tag):
        #     `https://source.developers.google.com/projects/*/repos/*/fixed-aliases/*/paths/*`
        #
        #     You may omit `paths/*` if you want to use the main directory.
        # @!attribute [r] deployed_url
        #   @return [::String]
        #     Output only. The URL pointing to the hosted repository where the function
        #     were defined at the time of deployment. It always points to a specific
        #     commit in the format described above.
        class SourceRepository
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Describes HttpsTrigger, could be used to connect web hooks to function.
        # @!attribute [r] url
        #   @return [::String]
        #     Output only. The deployed url for the function.
        class HttpsTrigger
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Describes EventTrigger, used to request events be sent from another
        # service.
        # @!attribute [rw] event_type
        #   @return [::String]
        #     Required. The type of event to observe. For example:
        #     `providers/cloud.storage/eventTypes/object.change` and
        #     `providers/cloud.pubsub/eventTypes/topic.publish`.
        #
        #     Event types match pattern `providers/*/eventTypes/*.*`.
        #     The pattern contains:
        #
        #     1. namespace: For example, `cloud.storage` and
        #        `google.firebase.analytics`.
        #     2. resource type: The type of resource on which event occurs. For
        #        example, the Google Cloud Storage API includes the type `object`.
        #     3. action: The action that generates the event. For example, action for
        #        a Google Cloud Storage Object is 'change'.
        #     These parts are lower case.
        # @!attribute [rw] resource
        #   @return [::String]
        #     Required. The resource(s) from which to observe events, for example,
        #     `projects/_/buckets/myBucket`.
        #
        #     Not all syntactically correct values are accepted by all services. For
        #     example:
        #
        #     1. The authorization model must support it. Google Cloud Functions
        #        only allows EventTriggers to be deployed that observe resources in the
        #        same project as the `CloudFunction`.
        #     2. The resource type must match the pattern expected for an
        #        `event_type`. For example, an `EventTrigger` that has an
        #        `event_type` of "google.pubsub.topic.publish" should have a resource
        #        that matches Google Cloud Pub/Sub topics.
        #
        #     Additionally, some services may support short names when creating an
        #     `EventTrigger`. These will always be returned in the normalized "long"
        #     format.
        #
        #     See each *service's* documentation for supported formats.
        # @!attribute [rw] service
        #   @return [::String]
        #     The hostname of the service that should be observed.
        #
        #     If no string is provided, the default service implementing the API will
        #     be used. For example, `storage.googleapis.com` is the default for all
        #     event types in the `google.storage` namespace.
        # @!attribute [rw] failure_policy
        #   @return [::Google::Cloud::Functions::V1::FailurePolicy]
        #     Specifies policy for failed executions.
        class EventTrigger
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Describes the policy in case of function's execution failure.
        # If empty, then defaults to ignoring failures (i.e. not retrying them).
        # @!attribute [rw] retry
        #   @return [::Google::Cloud::Functions::V1::FailurePolicy::Retry]
        #     If specified, then the function will be retried in case of a failure.
        class FailurePolicy
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods

          # Describes the retry policy in case of function's execution failure.
          # A function execution will be retried on any failure.
          # A failed execution will be retried up to 7 days with an exponential backoff
          # (capped at 10 seconds).
          # Retried execution is charged as any other execution.
          class Retry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Request for the `CreateFunction` method.
        # @!attribute [rw] location
        #   @return [::String]
        #     Required. The project and location in which the function should be created, specified
        #     in the format `projects/*/locations/*`
        # @!attribute [rw] function
        #   @return [::Google::Cloud::Functions::V1::CloudFunction]
        #     Required. Function to be created.
        class CreateFunctionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the `UpdateFunction` method.
        # @!attribute [rw] function
        #   @return [::Google::Cloud::Functions::V1::CloudFunction]
        #     Required. New version of the function.
        # @!attribute [rw] update_mask
        #   @return [::Google::Protobuf::FieldMask]
        #     Required list of fields to be updated in this request.
        class UpdateFunctionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the `GetFunction` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the function which details should be obtained.
        class GetFunctionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the `ListFunctions` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     The project and location from which the function should be listed,
        #     specified in the format `projects/*/locations/*`
        #     If you want to list functions in all locations, use "-" in place of a
        #     location. When listing functions in all locations, if one or more
        #     location(s) are unreachable, the response will contain functions from all
        #     reachable locations along with the names of any unreachable locations.
        # @!attribute [rw] page_size
        #   @return [::Integer]
        #     Maximum number of functions to return per call.
        # @!attribute [rw] page_token
        #   @return [::String]
        #     The value returned by the last
        #     `ListFunctionsResponse`; indicates that
        #     this is a continuation of a prior `ListFunctions` call, and that the
        #     system should return the next page of data.
        class ListFunctionsRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response for the `ListFunctions` method.
        # @!attribute [rw] functions
        #   @return [::Array<::Google::Cloud::Functions::V1::CloudFunction>]
        #     The functions that match the request.
        # @!attribute [rw] next_page_token
        #   @return [::String]
        #     If not empty, indicates that there may be more functions that match
        #     the request; this value should be passed in a new
        #     {::Google::Cloud::Functions::V1::ListFunctionsRequest google.cloud.functions.v1.ListFunctionsRequest}
        #     to get more functions.
        # @!attribute [rw] unreachable
        #   @return [::Array<::String>]
        #     Locations that could not be reached. The response does not include any
        #     functions from these locations.
        class ListFunctionsResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the `DeleteFunction` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the function which should be deleted.
        class DeleteFunctionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request for the `CallFunction` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     Required. The name of the function to be called.
        # @!attribute [rw] data
        #   @return [::String]
        #     Required. Input to be passed to the function.
        class CallFunctionRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of `CallFunction` method.
        # @!attribute [rw] execution_id
        #   @return [::String]
        #     Execution id of function invocation.
        # @!attribute [rw] result
        #   @return [::String]
        #     Result populated for successful execution of synchronous function. Will
        #     not be populated if function does not return a result through context.
        # @!attribute [rw] error
        #   @return [::String]
        #     Either system or user-function generated error. Set if execution
        #     was not successful.
        class CallFunctionResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request of `GenerateSourceUploadUrl` method.
        # @!attribute [rw] parent
        #   @return [::String]
        #     The project and location in which the Google Cloud Storage signed URL
        #     should be generated, specified in the format `projects/*/locations/*`.
        class GenerateUploadUrlRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of `GenerateSourceUploadUrl` method.
        # @!attribute [rw] upload_url
        #   @return [::String]
        #     The generated Google Cloud Storage signed URL that should be used for a
        #     function source code upload. The uploaded file should be a zip archive
        #     which contains a function.
        class GenerateUploadUrlResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Request of `GenerateDownloadUrl` method.
        # @!attribute [rw] name
        #   @return [::String]
        #     The name of function for which source code Google Cloud Storage signed
        #     URL should be generated.
        # @!attribute [rw] version_id
        #   @return [::Integer]
        #     The optional version of function. If not set, default, current version
        #     is used.
        class GenerateDownloadUrlRequest
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Response of `GenerateDownloadUrl` method.
        # @!attribute [rw] download_url
        #   @return [::String]
        #     The generated Google Cloud Storage signed URL that should be used for
        #     function source code download.
        class GenerateDownloadUrlResponse
          include ::Google::Protobuf::MessageExts
          extend ::Google::Protobuf::MessageExts::ClassMethods
        end

        # Describes the current stage of a deployment.
        module CloudFunctionStatus
          # Not specified. Invalid state.
          CLOUD_FUNCTION_STATUS_UNSPECIFIED = 0

          # Function has been successfully deployed and is serving.
          ACTIVE = 1

          # Function deployment failed and the function isn’t serving.
          OFFLINE = 2

          # Function is being created or updated.
          DEPLOY_IN_PROGRESS = 3

          # Function is being deleted.
          DELETE_IN_PROGRESS = 4

          # Function deployment failed and the function serving state is undefined.
          # The function should be updated or deleted to move it out of this state.
          UNKNOWN = 5
        end
      end
    end
  end
end

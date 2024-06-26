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
    module OsConfig
      module V1
        module OsConfigZonalService
          # Path helper methods for the OsConfigZonalService API.
          module Paths
            ##
            # Create a fully-qualified Instance resource string.
            #
            # @overload instance_path(project:, zone:, instance:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/zones/{zone}/instances/{instance}`
            #
            #   @param project [String]
            #   @param zone [String]
            #   @param instance [String]
            #
            # @overload instance_path(project:, location:, instance:)
            #   The resource will be in the following format:
            #
            #   `projects/{project}/locations/{location}/instances/{instance}`
            #
            #   @param project [String]
            #   @param location [String]
            #   @param instance [String]
            #
            # @return [::String]
            def instance_path **args
              resources = {
                "instance:project:zone" => (proc do |project:, zone:, instance:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "zone cannot contain /" if zone.to_s.include? "/"

                  "projects/#{project}/zones/#{zone}/instances/#{instance}"
                end),
                "instance:location:project" => (proc do |project:, location:, instance:|
                  raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
                  raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

                  "projects/#{project}/locations/#{location}/instances/#{instance}"
                end)
              }

              resource = resources[args.keys.sort.join(":")]
              raise ::ArgumentError, "no resource found for values #{args.keys}" if resource.nil?
              resource.call(**args)
            end

            ##
            # Create a fully-qualified Inventory resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/instances/{instance}/inventory`
            #
            # @param project [String]
            # @param location [String]
            # @param instance [String]
            #
            # @return [::String]
            def inventory_path project:, location:, instance:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/instances/#{instance}/inventory"
            end

            ##
            # Create a fully-qualified VulnerabilityReport resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/instances/{instance}/vulnerabilityReport`
            #
            # @param project [String]
            # @param location [String]
            # @param instance [String]
            #
            # @return [::String]
            def vulnerability_report_path project:, location:, instance:
              raise ::ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ::ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/instances/#{instance}/vulnerabilityReport"
            end

            extend self
          end
        end
      end
    end
  end
end

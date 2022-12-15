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

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/cloud/debugger/v2/version"

require "google/cloud/debugger/v2/controller/credentials"
require "google/cloud/debugger/v2/controller/client"

module Google
  module Cloud
    module Debugger
      module V2
        ##
        # The Controller service provides the API for orchestrating a collection of
        # debugger agents to perform debugging tasks. These agents are each attached
        # to a process of an application which may include one or more replicas.
        #
        # The debugger agents register with the Controller to identify the application
        # being debugged, the Debuggee. All agents that register with the same data,
        # represent the same Debuggee, and are assigned the same `debuggee_id`.
        #
        # The debugger agents call the Controller to retrieve  the list of active
        # Breakpoints. Agents with the same `debuggee_id` get the same breakpoints
        # list. An agent that can fulfill the breakpoint request updates the
        # Controller with the breakpoint result. The controller selects the first
        # result received and discards the rest of the results.
        # Agents that poll again for active breakpoints will no longer have
        # the completed breakpoint in the list and should remove that breakpoint from
        # their attached process.
        #
        # The Controller service does not provide a way to retrieve the results of
        # a completed breakpoint. This functionality is available using the Debugger
        # service.
        #
        # @example Load this service and instantiate a gRPC client
        #
        #     require "google/cloud/debugger/v2/controller"
        #     client = ::Google::Cloud::Debugger::V2::Controller::Client.new
        #
        module Controller
        end
      end
    end
  end
end

helper_path = ::File.join __dir__, "controller", "helpers.rb"
require "google/cloud/debugger/v2/controller/helpers" if ::File.file? helper_path

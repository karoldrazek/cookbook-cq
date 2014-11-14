#
# Cookbook Name:: cq
# Resource:: agent
#
# Copyright (C) 2014 Karol Drazek
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# TODO: filter below actions
# actions :create, :build, :download, :install, :delete, :upload, :activate,
#         :uninstall
actions :create, :delete, :enable, :disable, :activate, :deactivate

default_action :nothing

# Agent name and title (friendly name)
attribute :name, :kind_of => String, :name_attribute => true, :required => true
attribute :title, :kind_of => String

# CQ instance info and credentials
attribute :username, :kind_of => String, :required => true
attribute :password, :kind_of => String, :required => true
attribute :instance, :kind_of => String, :required => true

# Target that agent aims at
attribute :target, :kind_of => String
attribute :target_user, :kind_of => String
attribute :target_pass, :kind_of => String

# Instance types: author, publish. This helps defining whether the agent path should contain agents.publish or agents.author
attribute :instance_type, :kind_of => String, :required => true

# Agent types: replication, reverse_replication, flush
attribute :type, :kind_of => String

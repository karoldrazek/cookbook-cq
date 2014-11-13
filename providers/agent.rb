#
# Cookbook Name:: cq
# Provider:: agent
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
 
def whyrun_supported?
  true
end

def create_agent

end

def delete_agent

end

def enable_agent
  cmd_str = "#{node['cq-unix-toolkit']['install_dir']}/cqjcr "\
            "-i #{new_resource.instance} "\
            "-u #{new_resource.username} "\
            "-p #{new_resource.password} "\
            "-a /etc/replication/agents.#{new_resource.instance_type}/#{new_resource.name}/jcr:content"
            "-n enabled -v true"

  cmd = Mixlib::ShellOut.new(cmd_str, :timeout => 60)

  Chef::Log.info "Enabling agent #{new_resource.name}"
  cmd.run_command
end

def disable_agent
  cmd_str = "#{node['cq-unix-toolkit']['install_dir']}/cqjcr "\
            "-i #{new_resource.instance} "\
            "-u #{new_resource.username} "\
            "-p #{new_resource.password} "\
            "-a /etc/replication/agents.#{new_resource.instance_type}/#{new_resource.name}/jcr:content"
            "-n enabled -v false"

  cmd = Mixlib::ShellOut.new(cmd_str, :timeout => 60)

  Chef::Log.info "Disabling agent #{new_resource.name}"
  cmd.run_command
end

def activate_agent
  cmd_str = "curl "\
            "-u #{new_resource.username}:#{new_resource.password} "\
            "-X POST "\
            "-F path=\"/etc/replication/agents.#{new_resource.instance_type}/#{new_resource.name}\" "\
            "-F cmd=\"activate\" "\
            "#{new_resource.instance}/bin/replicate.json"

  cmd = Mixlib::ShellOut.new(cmd_str, :timeout => 60)

  Chef::Log.info "Activating agent #{new_resource.name}"
  cmd.run_command
end

def deactivate_agent
  cmd_str = "curl "\
            "-u #{new_resource.username}:#{new_resource.password} "\
            "-X POST "\
            "-F path=\"/etc/replication/agents.#{new_resource.instance_type}/#{new_resource.name}\" "\
            "-F cmd=\"deactivate\" "\
            "#{new_resource.instance}/bin/replicate.json"

  cmd = Mixlib::ShellOut.new(cmd_str, :timeout => 60)

  Chef::Log.info "Deactivating agent #{new_resource.name}"
  cmd.run_command
end


# Available actions

# Create agent
action :create do

end

# Delete agent
action :delete do

end

# Enable agent
action :enable do
  enable_agent
end

# Disable agent
action :disable do
  disable_agent
end

# Activate agent
action :activate do
  activate_agent
end

# Deactivate agent
action :deactivate do
  deactivate_agent
end

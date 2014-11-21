#
# Cookbook Name:: cq
# Attributes:: default
#
# Copyright (C) 2014 Jakub Wadolowski
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

# CQ attributes
# -----------------------------------------------------------------------------
default['cq']['user'] = 'cq'
default['cq']['group'] = 'cq'
default['cq']['limits']['file_descriptors'] = '16384'
default['cq']['base_dir'] = '/opt'
default['cq']['home_dir'] = "#{node['cq']['base_dir']}/cq"
default['cq']['version'] = '5.6.1'
default['cq']['custom_tmp_dir'] = '/opt/tmp'
default['cq']['package_cache'] = ''
default['cq']['jar']['url'] = 'https://box.cognifide.com/cq/5.6.1/cq-quickstart-5.6.1.jar'
default['cq']['jar']['checksum'] = ''
default['cq']['license']['url'] = 'https://box.cognifide.com/license/license.properties'
default['cq']['license']['checksum'] = ''

# Java attributes
# -----------------------------------------------------------------------------
default['java']['install_flavor'] = 'oracle'
default['java']['oracle']['accept_oracle_download_terms'] = true

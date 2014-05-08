#
# Cookbook Name:: zeromq
# Recipe:: default
#
# Author:: Thomas Rampelberg (<thomas@saunter.org>)
#
# Copyright 2011, Thomas Rampelberg
# Copyright 2014, John Bellone <jbellone@bloomberg.net>
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

include_recipe "build-essential"

if platform_family?("debian")
  uuid_package = "uuid-dev"
elsif platform_family?("rhel")
  uuid_package = "uuid-devel"
end

package uuid_package do
  action :upgrade
end

ark 'zeromq' do
  path File.join(node[:zeromq][:install_dir], 'bin')
  url node[:zeromq][:src_mirror]
  action [:configure, :install_with_make]
  not_if { ::File.exists?(File.join(node[:zeromq][:install_dir], 'lib/libzmq.so')) }
end

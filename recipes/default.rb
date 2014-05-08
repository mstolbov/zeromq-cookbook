#
# Cookbook Name:: zeromq
# Recipe:: default
#
# Author:: Thomas Rampelberg (<thomas@saunter.org>)
# Author:: John Bellone (<jbellone@bloomberg.net>)
#
# Copyright 2011, Thomas Rampelberg
# Copyright 2014, John Bellone
# Copyright 2014, Bloomberg Finance L.P.
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
  prefix_root node[:zeromq][:install_dir]
  url node[:zeromq][:src_mirror]
  checksum node[:zeromq][:src_checksum]
  autoconf_opts ["--prefix=#{node[:zeromq][:install_dir]}"]
  action :install_with_make
  not_if { ::File.exists?(File.join(node[:zeromq][:install_dir], 'lib/libzmq.so')) }
end

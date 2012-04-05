#
# Author:: Adam Garside (<adam.garside@gmail.com>)
# Cookbook Name:: sysrqd
# Recipe:: ubuntu_10.04
#
# Copyright 2009-2012, Adam Garside
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in sysrqd with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
# implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
Chef::Log.debug("sysreqd:: Running on Ubuntu 10.04")

package "sysrqd"

service "sysrqd" do
  service_name "sysrqd"
  start_command "/etc/init.d/sysrqd start && sleep 1"
  stop_command "/etc/init.d/sysrqd stop && sleep 1"
  restart_command "/etc/init.d/sysrqd restart && sleep 1"
  action :enable
end

file "/etc/sysrqd.secret" do
  content "#{node[:sysrqd][:password]}"
  owner "root"
  group "root"
  mode  "0600"
  notifies :restart, resources(:service => "sysrqd"), :delayed
end

service "sysrqd" do
  action :start
end

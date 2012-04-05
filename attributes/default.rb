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

# This could be set per-node or just left as is
default[:sysrqd][:password]   = "changeme"

# The port used is stored for reference
default[:sysrqd][:port]       = 4094

# The default sequence is listed for reference
default[:sysrqd][:commands]    = "(s) Emergency Sync, (u) Remount Filesystems R/O, (b) Reboot / (o) Poweroff"

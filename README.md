DESCRIPTION
===========

This cookbook installs and configures sysrqd, a minimal daemon that
allows for remote control of a running kernel, primarily for the purpose
of rebooting a hung system.

Requirements
------------

This cookbook is being developed against Chef 0.10.x

Platforms
---------

This cookbook is being developed against Ubuntu 10.04 LTS. Other
platforms may be added if time and resources permit.

Recipes
-------

*sysrqd::default* - Decide if we are running on a supported system and,
if so, run the correct driver recipe

The following *driver* recipes are currently supported:

*sysrqd::ubuntu_10.04* - Installs and configures _sysrqd_ for Ubuntu
10.04 LTS systems


Attributes
----------

*[:sysrqd][:password]* - The password to use when authenticating to a
node running sysrqd. *NOTE* the password is sent in cleartext so should
be changed after use. There are better ways to secure this exchange and
they are left as an exercise to the reader (i.e., encrypted data bags,
noah, zookeeper, etc.)

*[:sysrqd][:port]* - The port is stored on the node for informational
purposes only (i.e. remembering which one it is on in the middle of the
night when you actually need to use sysrqd)

*[:sysrqd][:commands]* - A list of standard commands keys used once
authenticated to sysrqd. This is stored for the same informational
purposes as *[:sysrqd][:port]


LICENSE AND AUTHOR
==================

Author:: Adam Garside (<adam.garside@gmail.com>)

Copyright 2009-2012, Adam Garside

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in sysrqd with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

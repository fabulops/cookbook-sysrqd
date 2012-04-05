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

*sysrqd::default*

The default recipe installs and configures sysrqd.

Attributes
----------

*[:sysrqd][:password]* - The password to use when authenticating to a
node running sysrqd. *NOTE* the password is sent in cleartext so should
be changed after use. There are better ways to secure this exchange and
they are left as an exercise to the reader.

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

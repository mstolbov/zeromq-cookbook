# <a name="title"></a> ZeroMQ cookbook [![Build Status](https://secure.travis-ci.org/mstolbov/zeromq-cookbook.png?branch=master)](http://travis-ci.org/mstolbov/zeromq-cookbook)

## <a name="description"></a> Description

Installs [ZeroMQ](http://www.zeromq.org/) on your platform.

## <a name="requirements"></a> Requirements

### <a name="requirements-platform"></a> Platform

The following platforms have been tested with this cookbook, meaning that
the recipes and LWRPs run on these platforms without error:

* ubuntu (10.04/11.04/12.04/13.04)
* debian (6.0)
* centos

Please [report][issues] any additional platforms so they can be added.

### <a name="requirements-cookbooks"></a> Cookbooks

This cookbook depends on the following external cookbooks:

* build-essential

## <a name="attributes"></a> Attributes

All attributes are named under the `zeromq` keyspace. The attributes
specified in the cookbook are used to setup the default config file.

* `node[:zeromq][:src_version]` -
* `node[:zeromq][:install_dir]` - location to install zeromq to
* `node[:zeromq][:src_mirror]` - full URL to download the source from.

## <a name="recipes"></a> Recipes

### <a name="recipes-default"></a> default

Downloads ZeroMQ from src mirror and installs it.

## <a name="todo"></a> TODO

* [] check other UNIX platforms
* [] add support for Windows (when someone request for it)

## <a name="maintainers"></a> Maintainers

* Mihail Stolbov (@mstolbov)
* Anton Kalyaev (@akalyaev)

### <a name="original-author-and-license"></a> Original author and license

Author:: Thomas Rampelberg (<thomas@saunter.org>)

Copyright 2011, Thomas Rampelberg

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


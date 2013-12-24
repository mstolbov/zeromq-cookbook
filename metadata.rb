name             "zeromq-cookbook"
maintainer       "Thomas Rampelberg"
maintainer_email "thomas@saunter.org"
license          "Apache 2.0"
description      "Installs/Configures zeromq"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "3.2.4"

depends "build-essential"

%w{debian ubuntu centos}.each do |os|
  supports os
end

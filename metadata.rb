name             "zeromq-cookbook"
maintainer       "Dustin Collins"
maintainer_email "dustin.collins@essess.com"
license          "Apache 2.0"
description      "Installs/Configures zeromq"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "3.2.4"

depends "build-essential"

%w{centos}.each do |os|
    supports os
end

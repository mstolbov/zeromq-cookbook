require 'spec_helper'

%w(libzmq.so libzmq.so.4).each do |lib|
  describe file("/usr/local/lib/#{lib}") do
    it { should be_linked_to('libzmq.so.4.0.0') }
  end
end

%w(libzmq.la libzmq.a).each do |lib|
  describe file("/usr/local/lib/#{lib}") do
    it { should be_file }
  end
end

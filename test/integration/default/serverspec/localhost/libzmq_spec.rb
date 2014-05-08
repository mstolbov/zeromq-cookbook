require 'spec_helper'

%w(libzmq.so libzmq.so.3).each do |lib|
  describe file("/usr/local/lib/#{lib}") do
    it { should be_linked_to('/usr/local/lib/libzmq.so.3.0.0') }
  end
end

%w(libzmq.la libzmq.a).each do |lib|
  describe file("/usr/local/lib/#{lib}") do
    it { should be_file }
  end
end

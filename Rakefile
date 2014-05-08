#!/usr/bin/env rake
require 'foodcritic'
require 'rake'
require 'rspec/core/rake_task'
require 'rake/testtask'

# FC041 is excluded because we want to preserve the official RVM installation
# process as much as possible, i.e. using curl to download the installer.
FoodCritic::Rake::LintTask.new do |t|
  t.options = { :fail_tags => ['any'], :tags => ['~FC041'] }
end

begin
  require 'kitchen/rake_tasks'
  Kitchen::RakeTasks.new
rescue LoadError
  puts ">>>>> Kitchen gem not loaded, omitting tasks" unless ENV['CI']
end

task :default => :foodcritic

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = 'test/integration/serverspec/**/*_spec.rb'
end

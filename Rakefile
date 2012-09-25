#!/usr/bin/env rake
require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'libs/nobody'
  t.test_files = FileList['test/lib/nobody/*_test.rb']
  t.verbose = true
end

task :default => :test

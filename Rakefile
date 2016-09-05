require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = "test/*_test.rb"
end

task default: :test

desc 'Generates a coverage report'
task :coverage do
    ENV['COVERAGE'] = 'true'
    Rake::Task['test'].execute
end

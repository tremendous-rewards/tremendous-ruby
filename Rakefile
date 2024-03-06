require "rubygems"
require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task default: :spec

task :console do
  exec "irb -r tremendous -I ./lib"
end

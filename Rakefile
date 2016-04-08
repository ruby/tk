require "bundler/gem_tasks"
require 'rake/extensiontask'

Rake::ExtensionTask.new do |ext|
  ext.name = 'tcltklib'
  ext.ext_dir = 'ext/tk'
  ext.lib_dir = 'lib'
end

Rake::ExtensionTask.new do |ext|
  ext.name = 'tkutil'
  ext.ext_dir = 'ext/tk/tkutil'
  ext.lib_dir = 'lib'
end

task :default => :compile

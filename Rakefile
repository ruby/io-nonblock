require "bundler/gem_tasks"
require "rake/testtask"

name = "io/nonblock"

if RUBY_ENGINE == 'ruby'
  require 'rake/extensiontask'
  extask = Rake::ExtensionTask.new(name) do |x|
    x.lib_dir.sub!(%r[(?=/|\z)], "/#{RUBY_VERSION}/#{x.platform}")
  end
else
  task :compile
end

Rake::TestTask.new(:test) do |t|
  t.libs = ["lib/#{RUBY_VERSION}/#{extask.platform}"] if extask
  t.libs << "test/lib"
  t.ruby_opts << "-rhelper"
  t.test_files = FileList["test/**/test_*.rb"]
end

task :test => :compile

task :default => :test

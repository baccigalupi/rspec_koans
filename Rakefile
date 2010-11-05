require File.dirname(__FILE__) + "/setup"
require 'rake'

if RSPEC_VERSION == 2
  puts 'in version 2'
else
  puts 'in version 1'
  require 'spec/rake/spectask'
end

def spec_opts 
  ["--format", 'nested', "--color"]
end

desc "Run all specs"
Spec::Rake::SpecTask.new('spec') do |t|
  t.spec_files = FileList['spec/**/*_spec.rb']
  t.spec_opts = spec_opts
end
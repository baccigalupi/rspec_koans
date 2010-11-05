require 'rubygems'

# load the right version of Rspec
RSPEC_VERSION = begin 
  require 'spec'
  1
rescue
  require 'rspec'
  2
end

# Load all the files in the lib
dir = '/lib'
Dir["#{dir}/**/*.rb"].sort.each do |file|
  require file
end

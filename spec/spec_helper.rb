require 'rubygems'
require 'rspec'

$:.unshift File.expand_path(File.dirname(__FILE__)+"/../")

# Load all the files in the lib
dir = '/lib'
Dir["#{dir}/**/*.rb"].sort.each do |file|
  require file
end

module GeneralHelpers
  def __
    'Fill in your answer here'
  end
end

RSpec.configure do |c|
  include GeneralHelpers
end 
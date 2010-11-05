require File.dirname(__FILE__) + '/../setup'

module GeneralHelpers
  def __
    'Fill in your answer here'
  end
end

if RSPEC_VERSION == 2
  RSpec.configure do |c|
    include GeneralHelpers
  end
else
  Spec::Runner.configure do |c|
    include GeneralHelpers
  end
end



require File.dirname(__FILE__) + '/../../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass

# This suite was taken directly from https://github.com/edgecase/ruby_koans
# and converted to use with Rspec 

describe NilClass do
  # unlike other languages ...
  it 'is an object' do
    nil.is_a?(Object).should __ # be_true -or- be_false
  end
  
  # What happens when you call a method that doesn't exist on nil?
  it 'raises an exception' do
    lambda{ nil.some_method_that_does_not_exist }.should raise_error(__)
  end
  
  it 'returns a message' do
    lambda{ nil.some_method_that_does_not_exist }.should raise_error(__, __) # second argument can be a string or regex
  end
  
  describe 'methods' do
    it 'knows it is nil' do
      nil.nil?.should __ # be_true -or- be_false
    end
    
    it 'can be made into a string' do
      nil.to_s.should == __
    end
    
    it 'can be inspected' do
      nil.inspect.should == __
    end
  end
  
  # THINK ABOUT IT:
  #
  # Is it better to use
  #    obj.nil?
  # or
  #    obj == nil
  # Why?
end

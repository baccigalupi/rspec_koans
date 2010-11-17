require File.dirname(__FILE__) + '/../../spec_helper'

# No code writing is required. This is a suite whose purpose is to document rspec testing.
# Fill in the __ to make the tests pass
# More information on Rsper is available at http://rspec.info/

# This suite was taken from http://github.com/edgecase/ruby_koans
# and converted to use with Rspec 

describe 'Testing with Rspec' do
  describe 'the nature of truth' do
    it 'truth shall be the default' do
      # If nothing is asserted, nothing will fail!
    end
  
    # Fill in the following blanks with 
    # the Rsepc matchers be_true or be_false
    it 'false should be falsey' do
      false.should __
    end
  
    it 'nil should also be falsey' do
      nil.should __
    end
  
    it 'true should be truthy' do
      true.should __
    end
  
    it 'other things are truthy too' do
      1.should __
      0.should __ 
    end
  
    # Nothing needed here, just observe!
    it 'direct equality is more precise testing method' do
      nil.should be_false
      nil.should_not == false
      
      2.should be_true
      1.should_not == true
    end
  end

  # To understand reality, we must compare our expectations against
  # reality.
  it 'should with == asserts equality' do
    actual_value = 1 + 1
    expected_value = __
    
    actual_value.should == expected_value
  end

  # Some ways of asserting equality are better than others.
  it 'refactoring for shorter tests makes them clearer' do
     (1 + 1).should == __
  end
end

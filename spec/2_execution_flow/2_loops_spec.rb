require File.dirname(__FILE__) + '/../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass

# This suite was taken directly from https://github.com/edgecase/ruby_koans
# and converted to use with Rspec (version 2)

# NOTE: loops are rarely used Ruby because iteration and enumeration is so easy
describe "looping" do
  describe 'with while' do
    it 'goes until an end state is reached (perhaps forever)' do
      i = 1
      result = 1
      while i <= 10
        result = result * i
        i += 1
      end
      result.should == __
    end
    
    it 'can be ended with a break statement' do
      i = 1
      result = 1
      while true
        break unless i <= 10
        result = result * i
        i += 1
      end
      result.should == __
    end
    
    it 'advances to the next step in the loop with next' do
      i = 0
      result = []
      while i < 10
        i += 1
        next if (i % 2) == 0
        result << i 
      end
      result.should == __
    end
  end
  
  it 'with for' do
    array = ["fish", "and", "chips"]
    result = []
    for item in array
      result << item.upcase
    end
    result.should == [__, __, __]
  end
end
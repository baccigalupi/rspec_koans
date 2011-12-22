require File.dirname(__FILE__) + '/../../spec_helper'

# No code writing is required. This is a suite whose purpose is to document rspec testing.
# Fill in the __ to make the tests pass
# More information on Rsper is available at http://rspec.info/

# This suite was taken from http://github.com/edgecase/ruby_koans
# and converted to use with Rspec. Rspec specific tests have also been added!

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

  describe 'the environment' do
    describe 'before' do
      before do
        @value = true
      end

      it 'can be used to setup a test environment' do
        @value.should == __
      end
    end

    describe 'before all' do
      before :all do
        @value = 1
      end

      it 'instance variables are persisted within the whole describe block' do
        @value.should == __
        @value += 1
      end

      it 'unless a per test cleanup happens, tests will share these values' do
        @value.should == __
      end
    end

    describe 'after' do
      before do
        @value = @value || 1
      end

      after do
        @value += 1
      end

      it 'instance variables are persisted within a describe block' do
        @value.should == __
      end

      it 'after is run after each test' do
        @value.should == __
      end
    end

    describe 'let' do
      let :value do
        1
      end

      let :dynamic_value do
        value + 1
      end

      it 'will will return what is returned by the block of code' do
        value.should == __
      end

      it 'can act dynamically' do
        dynamic_value.should == __
      end
    end
  end

  describe 'the nature of equality' do
    # To understand reality, we must compare our expectations against
    # reality.
    it 'can be easily tested with ==' do
      actual_value = 1 + 1
      expected_value = __

      actual_value.should == expected_value
    end

    # Some ways of asserting equality are better than others.
    it 'refactoring for shorter tests makes them clearer' do
       (1 + 1).should == __
    end

    # Sometimes asserting that things are not equal makes more sense
    describe 'and inequality' do
      # setting the __ value to fail, until you change it to a number!
      let :__ do
        2
      end

      it 'is sometimes an important assertion' do
        (1 + 1).should_not == __
      end

      it 'is inequality, even by a different name' do
        (1 + 1).should != __
      end
    end
  end

  describe 'patience and perseverance' do
    # It is sometimes necessary to delay tests or force a failure in order 
    # to clearly see the work at hand.
    #
    # Comment or uncomment the 'pending' call.

    describe 'delaying a test' do
      it 'is possible' do
        pending
        true.should == true
      end

      it 'is sometimes necessary' do
        pending "otherwise, there will be failure"
        fail "This is not working"
      end
    end
  end
end

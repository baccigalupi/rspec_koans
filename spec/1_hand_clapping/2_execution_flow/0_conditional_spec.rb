require File.dirname(__FILE__) + '/../../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass

# This suite was taken directly from https://github.com/edgecase/ruby_koans
# and converted to use with Rspec 

describe "if statements" do
  describe 'truthfulness' do
    # this is a function, which we will cover later
    def is_true?(condition)
      if condition
        return true
      else
        return false
      end
    end
  
    it 'true should be true' do
      is_true?(true).should == __
    end
    
    it 'false should not be' do
      is_true?(false).should == __
    end
    
    it 'nil is also not true' do
      is_true?(nil).should == __
    end
    
    it 'anything else is true' do
      is_true?(0).should == __
      is_true?(['foo', 'bar']).should == __
      is_true?({}).should == __
      is_true?('').should == __
    end
 
    describe 'combining conditions' do
      it 'and requires that both things are true' do
        is_true?( (true and false) ).should == __
        is_true?( (true and true) ).should == __
      end
      
      it '&& like and requires that both things are true' do
        is_true?( (true && false) ).should == __
        is_true?( (true && true) ).should == __
      end
      
      describe 'precedence of && vs "and"' do
        it '"and" has a lower precedence than =' do
          is_true?( (value = true and false) ).should == false
          value.should == __
        end
        
        it '&& has higher precedence than ==' do
          is_true?( (value = true && false) ).should == false
          value.should == __
        end
        
        it 'parenthesis changes the precedence of "and" to be like &&' do
          is_true?( (value = (true and false) ) ).should == false
          value.should == __
        end
        
        it 'parenthesis changes the precedence of && to be like "and"' do
          is_true?( ((value = true) and false) ).should == false
          value.should == __
        end
      end
      
      # precedence with || vs 'or' is the similar to && vs 'and'
      it '"or" allows either value to be true' do
        is_true?( (value = false or true) ).should == true
        value.should == __
      end
      
      it '|| allows either value to be true' do
        is_true?( (value = false || true) ).should == true
        value.should == __
      end
    end
  end
  
  describe 'setting variable conditionally' do
    it 'if-else statments can set a variable based on execution' do
      if true
        result = true
      else
        result = false
      end
      result.should == __
    end
    
    it 'can change the value of a variable outside its scope' do
      result = false
      if true
        result = true
      end
      result.should == __
    end

    it 'if statements always returns a value' do
      value = if true
        true
      else
        false
      end
      value.should == __

      value = if false
        true
      else
        false
      end
      value.should == __

      # NOTE: Actually, EVERY statement in Ruby will return a value, not
      # just if statements.
    end

    it 'returns nil when the condition is not met and there is no else' do
      value = if false
        true
      end
      value.should == __
    end
  end
  
  it 'ternary form of the if statement works' do
    (true ? true : false).should == __
    (false ? true : false).should == __
  end

  it 'if modifiers are at the end of the line' do
    result = false
    result = true if true

    result.should == __
  end
  
  it 'there are unless modifiers too' do
    result = false
    result = true unless false
    
    result.should == __
  end
  
  it 'unless can be used as a full control statements' do
    result = true
    unless false
      result = false
    end
    result.should == __
  end
end
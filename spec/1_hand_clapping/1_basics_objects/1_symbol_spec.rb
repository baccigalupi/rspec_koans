require File.dirname(__FILE__) + '/../../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass

# This suite was taken directly from https://github.com/edgecase/ruby_koans
# and converted to use with Rspec 

describe Symbol do
  it 'symbols are symbols' do
    :ruby.class.should == __
  end

  it 'symbols can be compared' do
    symbol_1 = :a_symbol
    symbol_2 = :a_symbol
    symbol_3 = :something_else

    symbol_1.should == __
    symbol_1.should_not == __
  end

  it 'should be the same object when given the same text' do
    symbol_1 = :a_symbol
    symbol_2 = :a_symbol

    (symbol_1 == symbol_2).should __ # be_true -or- be_false
    (symbol_1.object_id == symbol_2.object_id).should __
  end
  
  it 'can be created from a string' do
    "catsAndDogs".to_sym.should == __
  end
  
  it 'can be create from a string using #intern' do
    "catsAndDogs".intern.should == __
  end
  
  it 'can be made with spaces' do
    "cats and dogs".to_sym.should == __
  end

  it 'can be constructed with interpolation' do
    value = 'and'
    :"cats #{value} dogs".should == __
  end
  
  it 'can be dynamically created' do
    ("cats" + "dogs").to_sym.should == __
  end
  
  it 'interpolates into a string without the leading :' do
    symbol = :"cats and dogs"
    "It is raining #{symbol}".should == __
  end
  
  it 'should not be the same as a string with the same content' do
    :ruby.is_a?(String).should __ # be_true -or- be_false
    (:ruby == 'ruby').should __
  end
  
  # It's important to realize that symbols are not "immutable
  # strings", though they are immutable. None of the
  # interesting string operations are available on symbols.
  it 'should not have the same methods as strings' do
    :not_a_string.respond_to?(:split).should __ # be_true -or- be_false
  end
  
  it 'should not concatenate' do
    # to catch an exception, we create a closure/lambda, and assert that exceptions are raised
    lambda{
      :cats + :dogs
    }.should raise_error(__) # Fill in the exception class that will be raised
  end
  
  describe 'Symbol.all_symbols' do
    it 'returns symbols in current Ruby enviornment' do
      symbol = :symbol
      Symbol.all_symbols.include?(symbol).should __ # be_true -or- be_false
    end
    
    it 'includes symbols for any method name' do
      (Symbol.all_symbols.include?(:it)).should __ # be_true -or- be_false
      (Symbol.all_symbols.include?(:describe)).should __ # be_true -or- be_false
    end
  end
end

require File.dirname(__FILE__) + '/../../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass

# This suite was inspired by Ruby Koans: https://github.com/edgecase/ruby_koans

# NOTE: A method without a class is like a fish without a bicycle, but sometimes fishing is odd
describe "methods" do
  describe 'arguments' do
    it 'with none' do
      def hello_world
        return "Hello World"
      end
      
      lambda{ hello_world }.should_not raise_error # nothing to do here, move along
    end
    
    describe 'with one' do
      def hello_value( value )
        return "Hello #{value}"
      end
      
      it 'will take any one thing you give it' do
        value = __ # try different values in here. Is there anything that will raise an error? Why?
        lambda{ hello_value( value ) }.should_not raise_error
      end
      
      it "require the number of arguments that are specified" do
        lambda{ hello_value }.should raise_error(__)
      end
      
      it 'can be defined with a default value' do
        def hello_default( value = 'default' )
          return "Hello #{value}"
        end
        
        lambda{ hello_default }.should_not raise_error
        hello_default.should == __
        
        hello_default('World!').should == __
        
        # NOTICE: implementation is the same for hello_default
      end
    end
    
    describe 'many' do
      def hello_lots( name, statement )
        return "Hello #{name}\n#{statement}"
      end
      
      def hello_optional( name="World", statement="I love Ruby!")
        "Hello #{name}\n#{statement}"
      end
      
      it 'takes lots of anything that you give it' do
        hello_lots('World', "I love Ruby!").should == __
        hello_lots(:World, ['Arrays', 'can', 'happen', 'too']).should == __
        hello_lots(['World'], {:hash => 'that'}).should == __
      end
      
      it 'all arguments can be optional' do
        hello_optional.should == __
      end
      
      it 'the last argument can be optional' do
        hello_optional("Ruby World").should == __
      end
      
      it 'the first argument cannot be optional unless the last one is too' do
        hello_optional(nil, "This is my new message").should == __
      end
      
      describe 'the splat * operator' do
        def hello_splat(*args)
          return "Hello #{args.inspect}"
        end
        
        def splat_returns(*args)
          return *args
        end
        
        it 'the splat operator can make any number of argument into one' do
          hello_splat("World", "can", {"you" => "hear"}, ["me", "myself", "and", "I"]).should == __
        end
        
        it 'makes any arguments optional' do
          splat_returns.should == __
        end
        
        it 'converts all the arguments into an array' do
          string = "string" 
          hash = {"you" => "hear"} 
          array = ["me", "myself", "and", "I"]
          splat_returns(string, hash, array).should == __
        end
      end
    end
  end
  
  describe 'returning' do
    it 'with "return"' do
      def return_this
        return "this"
      end
      
      return_this.should == __
    end
    
    it 'the result from the last execution' do
      def return_something(arg)
        arg
      end
      
      return_something('string').should == __
      return_something(['string']).should == __
      
      # NOTE: This is why you rarely see the return statement used in Ruby
    end
    
    it 'always returns something, but sometimes something is nothing' do
      def do_nothing
      end
      
      do_nothing.should == __
      
      def do_the_impossible
        "impossible" if false
      end
      do_the_impossible.should == __
    end
    
    it 'return can also be used to change execution flow' do
      def return_conditionally( arg )
        return "condition met" if arg
        "condition not met"  
      end
      
      return_conditionally( true ).should == __
      return_conditionally( false ).should == __  
    end
  end
  
end
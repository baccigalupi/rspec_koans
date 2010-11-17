require File.dirname(__FILE__) + '/../../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass

# This suite was inspired by Ruby Koans: https://github.com/edgecase/ruby_koans

# NOTE: A method without a class is like a fish without a bicycle, but sometimes fishing is odd
describe "exceptional circumstances" do
  describe Exception do
    it 'with just a message will make a RuntimeError' do
      lambda{ raise "A message" }.should raise_error(__, __)
    end
    
    it 'can be raised with an Exception class' do
      lambda{ raise SecurityError }.should raise_error(__)
    end
    
    it 'can be raised with an Exception class and a message too' do
      lambda { raise SecurityError, "You can't do that, bud!"}.should raise_error(__, __)
    end
    
    # THINK ABOUT IT:
    # Think about external libraries, creating them and using them. 
    # Endusers of these libraries can't easily alter the library.
    # 
    # Why would it be useful to raise an error in code you write? 
    # Why would it be useful to get an exception instead of a returned value? 
  end
  
  describe 'exception handling' do
    def begin_and_raise( arg )
      raise ArgumentError, "Something went hecka wrong!" unless arg  
    end
    
    describe 'rescuing' do
      def exceptional_string_building( arg )
        string = ""
        begin
          begin_and_raise( arg )
          string << "got through the beginning"
        rescue
          string << "an exception was raised"
        end
        string
      end
    
      describe 'returns' do
        it 'whatever is returned from the begin block if there is no errors raised' do
          exceptional_string_building( true ).should == __
        end
    
        it 'whatever is returned from the rescue block if there are errors' do
          exceptional_string_building( false ).should == __
        end
      end
      
      describe 'assigning exceptions allow the examination of attributes:' do
        it 'message' do
          begin
            begin_and_raise( false )
          rescue Exception => e
            e.message
          end.should == __
        end
        
        it 'stack trace' do
          backtrace = begin
            begin_and_raise( false )
          rescue Exception => e
            e.backtrace
          end
          
          backtrace.class.should == __
          backtrace.first.should match(/__/)          
        end
      end
    end
    
    describe 'filtering' do
      it 'can be used to throw a different error' do
        lambda do 
          begin
            begin_and_raise( false )
          rescue ArgumentError
            raise SecurityError
          end
        end.should raise_error(__)
      end
      
      it 'can be used to filter which errors are rescued' do
        begin
            begin_and_raise( false )
        rescue SecurityError
          "rescuing a security error"
        rescue ArgumentError
          "rescuing an argument error"
        end.should == __
      end
    end
  
    describe 'ensure' do
      def ensurance( arg )
        string = ""
        begin
          begin_and_raise( arg )
          string << "got through the beginning"
        rescue
          string << "an exception was raised"
        ensure
          string << ", and then the ensurance kicked in."
        end
      end
      
      it 'will run if there is not an exception' do
        ensurance(true).should == __
      end
      
      it 'will run if there is an exception' do
        ensurance(false).should == __
      end
    end
    
    describe 'else' do
      def elserverance(arg)
        string = ""
        begin
          begin_and_raise( arg )
          string << "got through the beginning"
        rescue
          string << "an exception was raised"
        else
          string << ", and then more code was run."
        end
      end
      
      it 'will run after the begin if there is no exceptions raised' do
        elserverance(true).should == __
      end
      
      it 'will not run if there is an exception raised' do
        elserverance(false).should == __
      end
    end
    
    describe 'retry' do
      it 'will rerun the begin code block' do
        arg = false
        string = ""
        begin 
          begin_and_raise( arg )
          string << "finishing the begin block"
        rescue
          string << 'rescuing ... please hold: '
          arg = true
          retry 
        end
        string.should == __
      end
    end
  end
end
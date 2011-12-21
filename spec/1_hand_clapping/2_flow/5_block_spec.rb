require File.dirname(__FILE__) + '/../../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass

# This suite was taken directly from https://github.com/edgecase/ruby_koans
# and converted to use with Rspec 

describe "blocks" do
  describe 'are everywhere' do
    # NOTE: We saw some blocks in iterations, and loops. Here they are again
    it 'can be enclosed with do and end' do
      [1,2,3,4].map do |number|
        number.to_s
      end.should == __
    end
    
    it 'can be enclosed with curly brackets' do
      [1,2,3,4].map{|number| number.to_s}.should == __
    end
    
    it 'can be received by any method but will not be run' do
      string = nil
      def do_it
        "again Sam!"
      end
      
      lambda do
        do_it { string = 'Do it' }
      end.should_not raise_error
      
      string.should == __
    end
    
    it 'can be detected when given' do
      def detect_block
        return block_given?
      end
      
      detect_block.should == __
      detect_block{ puts 'given' }.should == __
    end
  end
  
  describe 'executing' do
    describe 'yielding' do
      it 'executes the code' do
        def execute_block
          yield
        end
        
        execute_block { "in the block" }.should == __
      end
      
      it 'can be called multiple times' do
        def execute_trifold
          [yield, yield, yield]
        end
        
        execute_trifold { "in the block" }.should == __
      end
      
      describe 'with arguments' do
        def execute_argumentatively( arg )
          yield( arg )
        end
        
        it 'uses the argument' do
          execute_argumentatively( 5 ){ |num| num * 3 }.should == __
          execute_argumentatively( :one => 1, :two => 2 ) do |hash|
            [hash.keys, hash.values]
          end.should == __
        end
        
        it 'are fuzzy about requirements' do
          string = nil
          lambda do
            string = execute_argumentatively( 5 ){ |num, extra| "#{num.inspect} #{extra.inspect}" }
          end.should_not raise_error
          string.should == __
        end
      end
    end
    
    it 'call' do
      it 'executes the code'
    end
  end

  describe 'alternative creation methods' do
    
  end

end
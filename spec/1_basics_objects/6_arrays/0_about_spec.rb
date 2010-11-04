require File.dirname(__FILE__) + '/../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass
# Information on Ruby Array api is available at http://ruby-doc.org/core/classes/Array.html

# This suite was taken directly from https://github.com/edgecase/ruby_koans
# and converted to use with Rspec (version 2)

describe Array, 'basics' do
  describe 'empty' do
    before do
      @array = Array.new
    end
    
    it 'should have the right class' do
      @array.class.should == __
    end
    
    it 'should have a right size' do
      @array.size.should == __
    end
    
    it 'should be the same as []' do
      @array.should == __
    end
  end
  
  describe 'inserting values' do
    before :all do
      @array = Array.new
    end
    
    it 'index 0 should map to the first member' do
      @array[0] = 1
      @array.should == __
    end
    
    it 'index 1 should map to the next member' do
      @array[1] = 2
      @array.should == __
    end
    
    it 'should add values with << to the end of the array' do
      @array << 333
      @array.should == __
    end
  end
  
  it 'can be built with []' do
    food = [:peanut, :button, :and, :jelly]
    food.size.should == __
  end
  
  describe 'assessing elements' do
    before :all do
      @array = [:peanut, :butter, :and, :jelly]
    end
    
    describe 'via index' do
      it 'should get the first element via index 0' do
        @array[0].should == __
      end
    
      it 'should get the first element via the #first method' do
        @array.first.should == __
      end
    
      it 'should get the last element via index' do
        @array[3].should == __
      end
    
      it 'should get the last element via the #last method' do
        @array.last.should == __
      end
    
      it 'should get the last element via negative index' do
        @array[-1].should == __
      end
    
      it 'should get other elements via negative index' do
        @array[-3].should == __
      end
      
      it 'can evaluate a ruby expression as an index' do 
        @array[(@array.size - 1)].should == __
      end
    end
  end
  
  it 'can be heterogeneous' do
    food = [:peanut, :button, :and, :jelly, 1, nil]
    food[5].class.should == __
    food[0].class.should == __
  end
  

  describe 'slicing via square brackets notation' do
    before :all do
      @array = [:peanut, :butter, :and, :jelly]
    end
    
    it 'should get a subarray' do
      @array[0,1].should == __
      @array[0,2].should == __
      @array[2,2].should == __
    end
    
    it 'should get the part of the subarray within range' do
      @array[2,20].should == __
    end
    
    it 'should return an empty array when out of range' do
      @array[4,2].should == __
      @array[4,0].should == __
      @array[5,0].should == __
    end
  end

  describe 'range commparison' do
    it 'is not a range' do
      (1..5).class.should == __
      (1..5).should_not == __
    end
    
    it '#to_a' do
      (1..5).to_a.should == __
      (1...5).to_a.should == __
    end
  end
  
  describe 'slicing with ranges' do
    before :all do
      @array = [:peanut, :butter, :and, :jelly]
    end
    
    it 'should get subarrays from the beginning' do
      @array[0..2].should == __
      @array[0...2].should == __
    end
    
    it 'should get subarrays in the middle' do
      @array[1..3].should == __
    end
    
    it 'should get the part of the subarray that is in index range' do
      @array[0..20].should == __
      @array[5..20].should == __
    end
    
    it 'should work with negative indexs ranges' do
      @array[0..-1].should == __
      @array[2..-1].should == __
    end
  end
  
  describe 'pushing and popping:' do
    before :all do
      @array = [1,2]
    end
    
    it 'pushing should put values at the end' do
      @array.push(:last)
      @array.should == __
    end
    
    it 'popping should remove the last value' do
      @array.pop.should == __
    end
  end
  
  describe 'shiftiness' do
    before :all do
      @array = [1,2]
    end
    
    it 'unshift should add a value to the beginning' do
      @array.unshift(:first)
      @array.should == __
    end
    
    it 'shift should take off the first value' do
      @array.shift.should == __
      @array.should == __
    end
  end
  
  # other notation %[]
end
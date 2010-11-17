require File.dirname(__FILE__) + '/../../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass

# This suite was taken directly from https://github.com/edgecase/ruby_koans
# and converted to use with Rspec 

describe "iterations" do
  describe '#each' do
    it "arrays have an each method" do
      [].methods.include?("each").should == __
    end

    it 'iterates through the values' do
      array = [1, 2, 3]
      sum = 0
      array.each do |item|
        sum += item
      end
      sum.should == __
    end

    it 'iterates when using curly braces' do
      array = [1, 2, 3]
      sum = 0
      array.each { |item|
        sum += item
      }
      sum.should == __
    end

    it 'breaks iteration' do
      array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      sum = 0
      array.each { |item|
        break if item > 3
        sum += item
      }
      sum.should == __
    end
  end
  
  describe '#collect' do
    before :all do
      @array = [1, 2, 3]
    end
    
    it 'transforms each element of the array' do
      @array.collect{ |item| item + 10 }.should == __
    end
    
    it '#map does is an alias to #collect' do
      @array.map{ |item| item + 10 }.should == __
    end
  end
  
  describe '#select' do
    before do
      @array = [1, 2, 3, 4, 5, 6]
    end
    
    it 'extracts all the items matching a condition' do
      @array.select { |item| (item % 2) == 0 }.should == __
    end  
    
    it '#find_all is an alias' do
      @array.find_all { |item| (item % 2) == 0 }.should == __
    end
  end
  
  describe '#detect' do
    before do
      @array = ["Jim", "Bill", "Clarence", "Doug", "Eli"]
    end
    
    it 'extracts the first items matching the condition' do
      @array.detect { |item| item.size > 4 }.should == __
    end  
    
    it '#find is an alias' do
      @array.find { |item| item.size > 4 }.should == __
    end
  end

  describe '#inject' do
    before do
      @array = [2,3,4]
    end
    
    it 'should apply the calculation to each item and passes the result forward' do
      @array.inject(0) { |sum, item| sum + item }.should == __
    end
    
    it 'uses the argument as the initial value' do
      @array.inject(10) { |sum, item| sum * item }.should == __
    end
    
    # NOTE: #reduce is an alias
    
    # Extra Credit:
    # Describe in your own words what inject does.
  end

  describe 'on other collections act the same' do
    before :all do
      @collection = (1..3)
    end
    
    it 'works with #each' do
      sum = 0
      @collection.each {|i| sum += i }
      sum.should == __
    end
    
    it 'works with #map' do
      @collection.map{ |i| i + 10 }.should == __
    end
    
    it 'works with #select' do
      @collection.select{|i| i % 2 != 0}.should == __
    end
    
    it 'works with #detect' do
      @collection.detect{|i| i % 2 != 0}.should == __
    end
    
    it 'works with #inject' do
      @collection.inject{|sum, item| sum * item}.should == __
    end
  end
end

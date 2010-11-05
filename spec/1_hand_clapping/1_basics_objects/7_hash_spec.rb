require File.dirname(__FILE__) + '/../../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass

# This suite was taken directly from https://github.com/edgecase/ruby_koans
# and converted to use with Rspec 

describe Hash do
  describe 'basics' do
    before do
      @hash = Hash.new
    end
    
    it 'should have the right class' do
      @hash.class.should == __
    end
    
    it 'should be the same as literal: {}' do
      (@hash == {}).should == __ # be_true -or be_false
    end
    
    it 'should have the right size' do
      @hash.size.should == __
    end
  end
  
  it 'should have a size corresponding to the number of key value pairs' do
    { :one => "uno", :two => "dos" }.size.should == __
  end
  
  describe 'accessing' do
    before do
      @hash = { :one => "uno", :two => "dos" }
    end
    
    it 'values should be accessible by key' do
      @hash[:one].should == __
      @hash[:two].should == __
    end
    
    it 'should not raise an error when accessing a key that doesn\'t exist' do 
      lambda{ @hash[:doesnt_exist] }.should raise_error # change this to pass
    end
    
    it 'should return nil when the key is not find' do
      @hash[:not_here].should == __
    end
  end
  
  describe 'setting values' do
    before do
      @hash = { :one => "uno", :two => "dos" }
    end
    
    it 'will key value pairs when setting new keys' do
      @hash[:three] = 'tres'
      @hash.should == {:one => 'uno', :two => 'dos', :three => __}
    end
    
    it 'will change the value associated with a key' do
      @hash[:one] = "eins"
      @hash.should == {:one => __, :two => "dos"}
    end
  end

  it 'is unordered in Ruby 1.8.X' do
    # this may fail is 1.9
    ({:one => 'uno', :two => 'dos'} == {:two => 'dos', :one => 'uno'}).should __ # be_true -or- be_false
  end
  
  describe '#keys' do
    before :all do
      @hash = { :one => "uno", :two => "dos" }
    end
    
    it 'should return an array' do
      @hash.keys.class.should == __
    end
    
    it 'should have the same size as the hash' do
      @hash.keys.size.should == __
    end
    
    it 'should include the hash keys' do
      @hash.keys.include?(:one).should __ # be_true -or- be_false
      @hash.keys.include?(:two).should __
    end
  end
  
  describe '#values' do
    before :all do
      @hash = { :one => "uno", :two => "dos" }
    end
    
    it 'should return an array' do
      @hash.value.class.should == __
    end
    
    it 'should have the same size as the hash' do
      @hash.values.size.should == __
    end
    
    it 'should include the values' do
      @hash.values.include?('uno').should __ # be_true -or- be_false
      @hash.values.include?('dos').should __
    end
  end

  describe 'merging' do
    before do
      @hash = { "jim" => 53, "amy" => 20, "dan" => 23 }
    end
    
    it 'should replace values' do
      @hash.merge({'jim' => 54}).should == {'jim' => __, 'amy' => 20, 'dan' => 23}
    end
       
    it 'should add new values' do
      @hash.merge({'jenny' => 26}).keys.should include __
    end
    
    it 'should not affect the original hash' do
      @hash.merge({'jenny' => 26})
      @hash.keys.should == __
    end
    
    it 'should change the original hash with the ! version' do
      @hash.merge!({'jenny' => 26})
      @hash.keys.should == __
    end
  end
end
require File.dirname(__FILE__) + '/../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass

# This suite was taken directly from https://github.com/edgecase/ruby_koans
# and converted to use with Rspec (version 2)
describe Object do
  it 'basic things are objects' do
    1.is_a?(Object).should    __ # be_true -or- be_false
    1.5.is_a?(Object).should  __
    "string".is_a?(Object).should __
    :symbol.is_a?(Object).should  __
    nil.is_a?(Object).should  __
  end
  
  it 'objects are objects' do
    Object.new.is_a?(Object).should __ # be_true -or be_false
  end
  
  it 'classes are objects' do
    Object.class.should == __
    Object.is_a?(Object).should == __
  end
  
  it 'any object can be converted to a string' do
    123.to_s.should == __
    nil.to_s.should == __
  end
  
  it 'any object can be inspected' do
    123.inspect.should == __
    nil.inspect.should == __
  end
  
  it 'each object has a object id' do
    Object.new.object_id.class.should == __
  end
  
  it 'every object has a unique id' do
    (Object.new.object_id == Object.new.object_id).should __ # be_true -or- be_false
  end

  it "some objects have the same id always" do
    false.object_id.should == __
    false.object_id.should == false.object_id
    
    true.object_id.should == __
    true.object_id.should == true.object_id
    
    nil.object_id.should == __
    nil.object_id.should == nil.object_id
  end
  
  it 'small integers have fixed ids too' do
    0.object_id.should == __
    1.object_id.should == __
    2.object_id.should == __
    3.object_id.should == __
    4.object_id.should == __
    100.object_id.should == __
    
    # THINK ABOUT IT:
    # What pattern do the object IDs for small integers follow?
  end

  it 'cloning creates a copy of the object, but with a different object id' do
    object = Object.new
    (object.clone.object_id == object.id).should == __ # be_true -or- be_false
  end
end

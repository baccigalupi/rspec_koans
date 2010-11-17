require File.dirname(__FILE__) + '/../../../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass
# Information on Ruby Array api is available at http://ruby-doc.org/core/classes/Array.html

# This suite was taken directly from https://github.com/edgecase/ruby_koans
# and converted to use with Rspec 

describe Array, 'variable assignment' do
  it 'should assign the whole array to a variable (non-parallel)' do
    names = ["John", "Smith"]
    names.should == __
  end

  it 'should do parallel assignment' do
    first_name, last_name = ["John", "Smith"]
    first_name.should == __
    last_name.should == __
  end

  it 'should work with parallel assignment having extra values' do
    first_name, last_name = ["John", "Smith", "III"]
    first_name.should == __
    last_name.should == __
  end

  it "should assign remaining array to last parallel assignment when using the splat operator" do
    first_name, *last_name = ["John", "Smith", "III"]
    first_name.should == __
    last_name.should == __
  end

  it "should work with too few items in parallel assignment" do
    first_name, last_name = ["Cher"]
    first_name.should == __
    last_name.should == __
  end

  it "should work with parallel assignment in arrays having subarrays" do
    first_name, last_name = [["Willie", "Rae"], "Johnson"]
    first_name.should == __
    last_name.should == __
  end

  it 'should work when not provided enough assignment variables' do
    first_name, = ["John", "Smith"]
    first_name.should == __
  end
  
  it "should swap variable in parallel assignment" do
    first_name = "Roy"
    last_name = "Rob"
    first_name, last_name = last_name, first_name
    first_name.should == __
    last_name.should == __
  end
end

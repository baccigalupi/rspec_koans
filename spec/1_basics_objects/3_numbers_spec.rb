require File.dirname(__FILE__) + '/../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass
# This suite was inspired by ruby koans: https://github.com/edgecase/ruby_koans

describe "Numbers" do
  describe 'Integers' do
    before do
      @int = 100
    end
    
    it 'has the class Fixnum' do
      1.class.should == __
    end
    
    it 'are objects' do
      1.is_a?(Object).should __ # be_true -or- be_false
    end
    
    it 'can be added' do
      (@int + 1).should == __
      (2 + 1).should == __
    end
    
    it 'can subtracted' do
      (@int - 50).should == __
      (2 - 1).should == __
    end
    
    it 'can be multiplied' do
      (@int * 2).should == __
      (2 * 2).should == __
    end
    
    it 'can be raised to a power' do
      (@int ** 2).should == __
      (2 ** 2).should == __
    end
    
    describe 'dividing' do
      it 'acts as expected when denominator divides into the numerator evenly' do
        (@int / 2).should == __
        (4 / 2).should == __
      end
      
      it 'rounds down to the whole number when there is a remainder' do
        (@int / 3).should == __
        (1 / 2).should == __ 
      end
    end
    
    it 'modulo gives the remainder' do
      (1 % 2).should == __
      (5 % 3).should == __
      (4 % 2).should == __
    end
    
    describe 'creating from a string' do
      it 'works as expected when all characters are numbers' do
        "123".to_i.should == __
      end

      it 'will return 0 when there are no numeric characters' do
        "abc".to_i.should == __
      end
      
      it 'will strip the ending non-numeric characters to make an integer' do
        "123abc".to_i.should == __
      end
      
      it 'will return 0 if there are no leading numeric characters' do
        "abc123".to_i.should == __
      end
      
      it 'will ignore decimal points' do
        "1.5".to_i.should == __
      end
    end
  end
  
  describe "Large integers" do
    it 'will be automatically be given the right class for dealing with their bigness' do
      12345678901234567890.class.should == __
    end
    
    it 'can be used with normal integers' do
      (12345678901234567890 + 1).should == __
    end
  end
  
  describe 'Floating Point Numbers (Decimals)' do
    it 'have the class Float' do
      1.5.class.should == __
    end
    
    it 'can be used with integers to make division of Fixnums reasonable' do
      (1.0/2).should ==    __
      (1/2.to_f).should == __
      (1.to_f/2).should == __
    end
    
    it 'converts from a string' do
      "1.5".to_f.should == __
      "1.5abc".to_f.should == __
      "abc1.5".to_f.should == __
    end
  end
end

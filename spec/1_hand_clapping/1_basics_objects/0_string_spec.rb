require File.dirname(__FILE__) + '/../../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass

# This suite was taken directly from https://github.com/edgecase/ruby_koans
# and converted to use with Rspec 

describe String do
  describe 'single vs. double quoting' do
    it 'double quoted literals should be strings' do
      "Hello, World".class.should == __
    end

    it 'single quoted literals are also strings' do
      'Goodbye, World'.class.should == __
    end
  
    it 'single quoted literals should be the same as double quoted literals' do
      'Don\'t'.should == __
    end
  
    it "double quoted literals should be the same as single quoted literals" do
      "He said, \"Go Away.\"".should == __
    end

    it "escaping strings in either case works" do
      a = "He said, \"Don't\""
      b = 'He said, "Don\'t"'
      (a == b).should __ # be_true -or- be_false
    end
    
    describe 'escaping' do
      it 'double quoted strings will escape special characters' do 
        "\n".size.should == __
      end

      it 'single quoted strings will not escape all special characters' do
        '\n'.size.should == __
      end

      it 'but single quoted strings escape some characters' do
        string = '\\\''
        string.size.should == __
        string.should == __ # use a double quoted string
      end
    end
    
    describe 'interpolation' do
      it "double quoted strings will interpolate ruby expressions" do
        "1+2 is #{1+2}".should == __
      end
      
      it 'single quoted strings will not interpolate' do
        '1+2 is #{1+2}'.should == __
      end
    end
  end
  
  describe 'other construction methods' do
    before do
      @string = __ # use this before block to make your assertions easier and cleaner
    end
    
    it '%() makes quotes without escaping \' or "' do
      %(flexible quotes can handle both ' and " characters).should == @string
    end
    
    it '%!! makes quotes without escaping \' or "' do
      %!flexible quotes can handle both ' and " characters!.should == @string
    end
    
    it '%{} makes quotes without escaping \' or "' do
      %{flexible quotes can handle both ' and " characters}.should == @string
    end
    
    it '<<-CONSTANT ... CONSTANT makes quotes without escaping' do
      string = <<-STRING 
        flexible quotes can handle both ' and " characters
      STRING
      string.should == @string
    end
    
    it 'handle multiple lines' do
      string = <<-OTHER_STING
        It was the best of times,
        It was the worst of times
      OTHER_STING
      
      string.size.should == __
      string.should include "\n" # new line character
    end
  end
  
  describe 'concatination' do
    it 'should work with + on literals' do
      ("Hello, " + "World").should == __
    end
    
    it 'should work with variables and +' do
      hi = "Hello, "
      there = "World"
      (hi + there).should == __
    end
    
    it 'should work with +=' do
      hi = "Hello, "
      there = "World"
      hi += there
      hi.should == __
    end
    
    it '+= should not affect an original string' do
      original_string = "Hello, "
      hi = original_string
      there = "World"
      hi += there
      original_string.should == __
    end
    
    it '<< should add to the end of the string' do
      hi = "Hello, "
      there = "World"
      hi << there
      hi.should == __
      there.should == __
    end
    
    it '<< does affect the original string' do
      original_string = "Hello, "
      hi = original_string
      there = "World"
      hi << there
      original_string.should == __

      # THINK ABOUT IT:
      #
      # Ruby programmers tend to favor the shovel operator (<<) over the
      # plus equals operator (+=) when building up strings.  Why?
    end
  end

  describe 'substrings' do
    describe 'with []' do
      before :all do
        @string = "Bacon, lettuce and tomato"
      end
    
      it 'should work with start and length notation' do
        @string[7,3].should == __
      end
    
      it 'should work with a range' do
        @string[7..9].should == __
      end
    end
    
    describe 'spliting' do
      it "should be on a space by default" do
        "Sausage Egg Cheese".should == [__, __, __]
      end
      
      it 'can be on an alternate character' do
        "Beer&Wine".split('&').should == [__, __]
      end
      
      it 'can be on an alterate multi-character string' do
        "Beer & Wine".split(' & ').should == [__, __] 
      end
      
      it "can be on a regex too" do
        "the:rain:in:spain".split(/:/).should == [__, __, __, __]
        
        # NOTE: Patterns are formed from Regular Expressions.  Ruby has a
        # very powerful Regular Expression library.  We will become
        # enlightened about them soon.
      end
    end
  end
  
  describe 'characters' do
    before :all do
      @string = "Bacon, lettuce and tomato"
    end
    
    it '[index] returns a character code' do
      @string[1].should == __
    end
    
    it '?char notation returns a code' do
      (?a).should == __
    end
    
    it '?char can do math too' do
      (?b == (?a + 1)).should == __
    end
  end
  
  it 'joining on a character works' do
    words = ["Now", "is", "the", "time"]
    words.join(" ").should == __
  end

  it "creates unique objects for each literal" do
    a = "a string"
    b = "a string"
    
    (a == b).should __ # be_true -or- be_false
    (a === b).should __ # === is only true if they are the same object
    (a.object_id == b.object_id).should __
  end
end
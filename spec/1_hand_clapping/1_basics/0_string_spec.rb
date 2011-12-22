require File.dirname(__FILE__) + '/../../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass

# This suite was taken directly from https://github.com/edgecase/ruby_koans
# and converted to use with Rspec

describe String do
  describe 'some convenient methods' do
    it 'has a size' do
      '12345'.size.should == __
    end

    it 'knows if it is empty' do
      ''.empty?.should __ # be_true or be_false
      'abc'.empty?.should __
    end

    it 'empty strings are not the same as nil' do
      ('' == nil).should __ # be_true or be_false
    end

    describe '#strip' do
      it 'removes space at the beginning' do
        '  foo'.strip.should == __
      end

      it 'removes space at the end' do
        'bar  '.strip.should == __
      end
    end

    describe 'changing case' do
      describe '#upcase' do
        it 'returns a string that is all uppercase' do
          'abc'.upcase.should == __
        end

        it 'does not affect the original string' do
          string = 'abc'
          string.upcase
          string.should == __
        end
      end

      describe '#upcase!' do
        it 'changes the original string to upcase' do
          string = 'abc'
          string.upcase!
          string.should == __
        end
      end

      describe '#downcase' do
        it 'returns a string that is all lowercase' do
          'ABC'.downcase.should == __
        end

        it 'does not affect the original string' do
          string = 'ABC'
          string.downcase
          string.should == __
        end
      end

      describe '#downcase!' do
        it 'changes the original string to lowercase' do
          string = 'ABC'
          string.downcase!
          string.should == __
        end
      end
    end
  end

  describe 'double vs. single quoting' do
    it 'single quoted strings are the same as a double quoted string' do
      double = "Hello, World"
      ('Hello, World' == double).should __ # be_true -or- be_false
    end

    it 'escaping single quotes' do
      double = "What's up doc?"
      ('What\'s up doc?' == double).should __ # be_true -or- be_false
    end

    it 'escaping double quotes' do
      single = 'He said, "Whatever"'
      ("He said, \"Whatever\"" == single).should __ # be_true -or- be_false
    end

    describe 'escaping special characters' do
      it 'double quoted strings escape special characters' do
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

    describe '<<-CONSTANT ... CONSTANT' do
      it 'makes quotes without escaping' do
        string = <<-STRING
          flexible quotes can handle both ' and " characters
        STRING
        string.should include @string # there are also space and new line characters
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
  end
end

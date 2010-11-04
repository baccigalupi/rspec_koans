require File.dirname(__FILE__) + '/../spec_helper'

# No code writing is required for this test suite, just fill in the __ to make them all pass

# This suite was taken directly from https://github.com/edgecase/ruby_koans
# and converted to use with Rspec (version 2)

describe Regexp do
  it 'has the right class' do
    /pattern/.class.should == __
  end
  
  it 'can search a string for matching content' do
    "some matching content"[/match/].should == __
  end

  it 'returns nil if no match is found' do
    "some matching content"[/missing/].should == __
  end

  it 'question mark indicates that the match is optional' do
    "abbcccddddeeeee"[/ab?/].should == __
    "abbcccddddeeeee"[/az?/].should == __
  end
  
  it 'plus sign means one or more' do
    "abbcccddddeeeee"[/bc+/].should == __
  end
  
  it '* means zero or more' do
    "abbcccddddeeeee"[/ab*/].should == __
    "abbcccddddeeeee"[/az*/].should == __
    "abbcccddddeeeee"[/z*/].should  == __

    # THINK ABOUT IT:
    #
    # When would * fail to match?
  end

  it 'the left most matches wins' do
    "abbccc az"[/az*/].should == __
    
    # THINK ABOUT IT:
    #
    # We say that the repetition operators above are "greedy."
    #
    # Why?
  end
  
  describe 'optional matching from a set []' do
    it 'square brackets allow for optional matching from a set' do
      regex = /[cbr]at/
      "cat"[regex].should == __
      "bat"[regex].should == __
      "rat"[regex].should == __
      "zat"[regex].should == __
    end
    
    it 'requires that at least one of the set matches' do
      "at"[regex].should  == __
    end
    
    it '\d should match any digit' do
      "the number is 42"[/[0123456789]+/].should == __
      "the number is 42"[/\d+/].should == __
    end
    
    it '- can be used to express ranges' do
      "the number is 42"[/[0-9]+/].should == __
      "the number is 42"[/[a-z]+/].should == __
    end
    
    it 'can be negated with a ^ character' do
      "the number is 42"[/[^0-9]+/].should == __
    end
  end
  
  describe 'special characters' do
    it '\s will catch white space' do
      "space: \t\n"[/\s+/].should == __
    end
    
    it '\w will catch a whole word' do
      # NOTE:  This is more like how a programmer might define a word.
      "variable_1 = 42"[/[a-zA-Z0-9_]+/].should == __
      "variable_1 = 42"[/\w+/].should == __
    end
    
    it '. is a wild card character and will match anything besides a new line' do
      "abc\n123"[/a.+/].should == __
      "abc123"[/a.+/].should == __
    end
    
    it 'can be negated with the uppercase version' do
      "the number is 42"[/\D+/].should == __
      "space: \t\n"[/\S+/].should == __
      "variable_1 = 42"[/\W+/].should == __
    end
    
    it '\A will anchor matches to the front of the string' do
      "start end"[/\Astart/].should == __
      "start end"[/\Aend/].should == __
      "start\nend"[/\Astart/].should == __
    end

    it '\z will anchor matches to the end of the string' do
      "start end"[/end\z/].should == __
      "start end"[/start\z/].should == __
      "start\nend"[/end\z/].should == __
    end

    it '^ (outside of square brackets) will anchor to the front of the line' do
      "num 42\n2 lines"[/^\d+/].should == __
    end

    it '$ anchors matches to the end of the line' do
      "2 lines\nnum 42"[/\d+$/].should == __
    end

    it '\b anchors matches to a word boundary' do
      "bovine vines"[/\bvine./].should == __
    end
  end

  describe 'grouping with parens' do
    it 'groups contents with parens' do
      "ahahaha"[/(ha)+/].should == __
    end
    
    it 'will return a captured group by number (1-based indexing)' do
      "Gray, James"[/(\w+), (\w+)/, 1].should == __
      "Gray, James"[/(\w+), (\w+)/, 2].should == __
    end

    it 'generates captures that can be accessed with special variables' do
      "Name:  Gray, James"[/(\w+), (\w+)/].should == __
      $1.should == __ # the first capture
      $2.should == __ # the second capture
    end

    it '| means or' do
      grays_regex = /(James|Dana|Summer) Gray/
      "James Gray"[grays_regex].should == __
      "Summer Gray"[grays_regex, 1].should == __
      "Jim Gray"[grays_regex, 1].should == __
    
      # THINK ABOUT IT:
      #
      # Explain the difference between a character class ([...]) and alternation (|).

      # ------------------------------------------------------------------
    end
  end
  
  describe 'other methods on string for matching' do
    it '#scan will find all matches' do
      "one two-three".scan(/\w+/).should == __
    end

    it '#sub will find and replace the first match' do
      "one two-three".sub(/t\w*/, '2').should == __
    end
    
    it '#gsub will find and replace all matches' do
      "one two-three".gsub(/t\w*/, 'number').should == __
    end
  end
end

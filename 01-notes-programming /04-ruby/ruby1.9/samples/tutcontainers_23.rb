#---
# Excerpted from "Programming Ruby",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ruby3 for more book information.
#---
#require_relative  'count_frequency.rb'
def count_frequency(word_list)
  counts = Hash.new(0)
  for word in word_list
    counts[word] += 1
  end
  counts
end
require 'test/unit'

class TestCountFrequency < Test::Unit::TestCase
  def test_empty_list
    assert_equal({}, count_frequency([]))
  end  
  def test_single_word
    assert_equal({"cat" => 1}, count_frequency(["cat"]))
  end 
  def test_two_different_words
    assert_equal({"cat" => 1, "sat" => 1}, 
                 count_frequency(["cat", "sat"]))
  end 
  def test_two_words_with_adjacent_repeat
    assert_equal({"cat" => 2, "sat" => 1}, 
                 count_frequency(["cat", "cat", "sat"]))
  end 
  def test_two_words_with_non_adjacent_repeat
    assert_equal({"cat" => 2, "sat" => 1}, 
                 count_frequency(["cat", "sat", "cat"]))
  end 
end

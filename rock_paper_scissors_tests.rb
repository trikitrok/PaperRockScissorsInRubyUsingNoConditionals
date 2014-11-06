require File.join(File.dirname(__FILE__), "rock_paper_scissors")
require 'test/unit'

class TestRockPaperScissors < Test::Unit::TestCase
  def test_paper_against_paper
      game = Game.new
      result = game.hand(Paper.new, Paper.new)
      assert_equal(result.to_s, "Two Papers, no one wins")
  end
end
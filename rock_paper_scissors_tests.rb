require File.join(File.dirname(__FILE__), "rock_paper_scissors")
require 'test/unit'

class TestRockPaperScissors < Test::Unit::TestCase

  def setup
    @game = Game.new
    @paper = Paper.new
  end

  def test_paper_against_paper
      result = @game.hand(@paper, @paper)
      assert_equal(result.to_s, "Two Papers, no one wins")
  end

  def test_paper_against_rock
    result = @game.hand(@paper, Rock.new)
    assert_equal(result.to_s, "Paper wins to Rock")
  end
end
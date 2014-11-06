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

  def test_paper_against_scissors
    result = @game.hand(@paper, Scissors.new)
    assert_equal(result.to_s, "Scissors wins to Paper")
  end

  def test_rock_against_rock
    result = @game.hand(Rock.new, Rock.new)
    assert_equal(result.to_s, "Two Rocks, no one wins")
  end

  def test_scissors_against_paper
    result = @game.hand(Scissors.new, @paper)
    assert_equal(result.to_s, "Scissors wins to Paper")
  end
end
require File.join(File.dirname(__FILE__), "rock_paper_scissors")
require 'test/unit'

class TestRockPaperScissors < Test::Unit::TestCase

  def setup
    @game = Game.new
    @paper = Paper.new
    @rock = Rock.new
    @scissors = Scissors.new
  end

  def test_paper_against_paper
      result = @game.hand(@paper, @paper)
      assert_equal(result.to_s, "Two Papers, no one wins")
  end

  def test_paper_against_rock
    result = @game.hand(@paper, @rock)
    assert_equal(result.to_s, "Paper wins to Rock")
  end

  def test_paper_against_scissors
    result = @game.hand(@paper, @scissors)
    assert_equal(result.to_s, "Scissors wins to Paper")
  end

  def test_rock_against_rock
    result = @game.hand(@rock, @rock)
    assert_equal(result.to_s, "Two Rocks, no one wins")
  end

  def test_scissors_against_paper
    result = @game.hand(@scissors, @paper)
    assert_equal(result.to_s, "Scissors wins to Paper")
  end

  def test_scissors_against_rock
    result = @game.hand(@scissors, @rock)
    assert_equal(result.to_s, "Rock wins to Scissors")
  end

  def test_scissors_against_scissors
    result = @game.hand(@scissors, @scissors)
    assert_equal(result.to_s, "Two Scissors, no one wins")
  end

  def test_rock_against_paper
    result = @game.hand(@rock, @paper)
    assert_equal(result.to_s, "Paper wins to Rock")
  end
end
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
    assert_that(GameHand.with(@paper).against(@paper).results_in("Two Papers, no one wins"))              
  end

  def test_paper_against_rock
    assert_that(GameHand.with(@paper).against(@rock).results_in("Paper wins to Rock"))        
  end

  def test_paper_against_scissors
    assert_that(GameHand.with(@paper).against(@scissors).results_in("Scissors wins to Paper"))    
  end

  def test_scissors_against_paper
    assert_that(GameHand.with(@scissors).against(@paper).results_in("Scissors wins to Paper"))
  end

  def test_scissors_against_rock
    assert_that(GameHand.with(@scissors).against(@rock).results_in("Rock wins to Scissors"))
  end

  def test_scissors_against_scissors
    assert_that(GameHand.with(@scissors).against(@scissors).results_in("Two Scissors, no one wins"))
  end

  def test_rock_against_paper
    assert_that(GameHand.with(@rock).against(@paper).results_in("Paper wins to Rock"))
  end

  def test_rock_against_rock
    assert_that(GameHand.with(@rock).against(@rock).results_in("Two Rocks, no one wins"))
  end

  def test_rock_against_scissors
    assert_that(GameHand.with(@rock).against(@scissors).results_in("Rock wins to Scissors"))
  end

  def assert_that(predicate_result)
    assert(predicate_result)
  end
end

class GameHand
  def initialize(gesture)
    @gesture1 = gesture
  end

  class << self 
    def with(gesture)
      new(gesture)
    end
  end

  def against(gesture)
    @gesture2 = gesture
    self
  end

  def results_in(expected)
    result = Game.new().hand(@gesture1, @gesture2)
    result.to_s == expected
  end
end
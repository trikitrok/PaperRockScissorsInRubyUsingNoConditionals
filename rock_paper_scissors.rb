class Game
  def hand(gesture1, gesture2)
    gesture1.play_against(gesture2)
  end
end

class Gesture
  def winning_against(other)
    Victory.new(self, other)
  end

  def tied_with(other)
    Tie.new(other)
  end
end

class Paper < Gesture
  def play_against(other)
    other.play_against_paper(self) 
  end

  def play_against_paper(paper)
    tied_with(paper)
  end

  def play_against_scissors(scissors)
    scissors.play_against_paper(self)
  end

  def play_against_rock(rock)
    winning_against(rock)
  end

  def to_s
    "Paper"
  end 

  def to_plural_s
    to_s + "s"
  end
end

class Rock < Gesture
  def play_against(other)
    other.play_against_rock(self) 
  end

  def play_against_paper(paper)
    paper.play_against_rock(self)
  end

  def play_against_scissors(scissors)
    winning_against(scissors)
  end

  def play_against_rock(rock)
    tied_with(rock)
  end

  def to_s
    "Rock"
  end 

  def to_plural_s
    to_s + "s"
  end
end

class Scissors < Gesture
  def play_against(other)
    other.play_against_scissors(self)
  end

  def play_against_paper(paper)
    winning_against(paper)
  end

  def play_against_scissors(scissors)
    tied_with(scissors)
  end

  def play_against_rock(rock)
    rock.play_against_scissors(self)
  end

  def to_s
    "Scissors"
  end 

  def to_plural_s
    to_s
  end
end

class Victory
  def initialize(winner, loser)
    @winner = winner
    @loser = loser
  end

  def to_s
    @winner.to_s + " wins to " + @loser.to_s
  end

end

class Tie
  def initialize(gesture)
    @gesture = gesture
  end

  def to_s
    "Two " + @gesture.to_plural_s + ", no one wins"
  end
end
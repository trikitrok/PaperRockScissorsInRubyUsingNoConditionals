class Game
  def hand(gesture1, gesture2)
    gesture1.play_against(gesture2)
  end
end

class Paper
  def play_against(other)
    other.play_against_paper(self) 
  end

  def play_against_paper(paper)
    Tie.new(paper)
  end

  def play_against_scissors(scissors)
    scissors.play_against_paper(self)
  end

  def play_against_rock(rock)
    rock.play_against_paper(self)
  end

  def to_s
    "Paper"
  end 

  def to_plural_s
    to_s + "s"
  end
end

class Rock
  def play_against(other)
    other.play_against_rock(self) 
  end

  def play_against_paper(paper)
    Victory.new(paper, self)
  end

  def play_against_scissors(scissors)
    Victory.new(self, scissors)
  end

  def play_against_rock(rock)
    Tie.new(rock)
  end

  def to_s
    "Rock"
  end 

  def to_plural_s
    to_s + "s"
  end
end

class Scissors
  def play_against(other)
    other.play_against_scissors(self)
  end

  def play_against_paper(paper)
    Victory.new(self, paper)
  end

  def play_against_scissors(scissors)
    Tie.new(scissors)
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
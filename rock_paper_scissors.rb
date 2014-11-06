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
    "Two Papers, no one wins"
  end

  def to_s
    "Paper"
  end 
end

class Rock
  def play_against(other)
    other.play_against_rock(self) 
  end

  def play_against_paper(paper)
    Victory.new(paper, self)
  end

  def play_against_rock(rock)
    "Two Rocks, no one wins"
  end

  def to_s
    "Rock"
  end 
end

class Scissors
  def play_against_paper(paper)
    Victory.new(self, paper)
  end

  def to_s
    "Scissors"
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
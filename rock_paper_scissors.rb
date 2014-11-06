class Game
  def hand(gesture1, gesture2)

    gesture2.play_against_paper(gesture1) 
    
  end
end

class Paper
  def play_against_paper(paper)
    "Two Papers, no one wins"
  end

  def to_s
    "Paper"
  end 
end

class Rock
  def play_against_paper(paper)
    Victory.new(paper, self)
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
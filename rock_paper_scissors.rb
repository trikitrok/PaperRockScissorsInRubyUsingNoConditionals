class Game
  def hand(gesture1, gesture2)

    gesture2.play_against_paper() 
    
  end
end

class Paper
  def play_against_paper
    "Two Papers, no one wins"
  end
end

class Rock
  def play_against_paper
    "Paper wins to Rock"
  end
end

class Scissors
  def play_against_paper
    "Scissors wins to Paper"
  end
end
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
    "Paper wins"
  end
end
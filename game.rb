class Game
  attr_accessor :p1, :p2
  def intialize(p1,p2,) 
  @p1 = p1
  @p2 = p2
  current_player = p1
  end

  def generate_a_question
  end

  def check_answer
  end
  
  def start_game
    while p1.lives != 0 || p2.lives != 0 do
    
    #loop this one turn 
    # one turn
    puts "#{self.current_player} #{self.question}"
    print "> "
    puts "#{self.current_player}#{correct or not}"
    puts "---------- NEW TURN ----------"
    end
    end
  end
end

class Game
  attr_accessor :p1, :p2, :num1, :num2, :current_player

  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @current_player = 1
  end

  def generate_a_question
    @num1 = rand (1...10)
    @num2 = rand (1...10)
    puts "What does #{self.num1} plus #{self.num2} equal?"
  end

  def check_answer(player_answer)
    answer = self.num1 + self.num2
    (player_answer != answer) ? false : true
  end

  def start_game
    while self.p1.lives != 0 || self.p2.lives != 0
      self.current_player = 1
      print "Player #{self.current_player}: "
      self.generate_a_question
      print '> '
      answer = gets.chomp
      if self.check_answer(answer.to_i)
        puts "Player#{self.current_player}: YES! You are correct."
      else
        self.p1.lives -= 1
        puts "Player #{self.current_player}: Seriously? No!"
      end

      puts "P1: #{self.p1.lives}/3 vs P@: #{self.p2.lives}/3"
      puts '---------- NEW TURN ----------'
      break if self.p1.lives == 0

      self.current_player = 2
      print "Player #{self.current_player}: "
      self.generate_a_question
      print '> '
      answer = gets.chomp
      if self.check_answer(answer.to_i)
        puts "Player #{self.current_player}: YES! You are correct."
      else
        self.p2.lives -= 1
        puts "Player #{self.current_player}: Seriously? No!"
      end
      puts "P1: #{p1.lives}/3 vs P@: #{p2.lives}/3"
      puts '---------- NEW TURN ----------'
      break if self.p2.lives == 0
    end

    #game over
    if self.p1.lives == 0
      puts "Player 2 wins with a score of #{p2.lives}/3"
    elsif self.p2.lives == 0
      puts "Player 1 wins with a score of #{p1.lives}/3"
    end
    puts '---------- GAME OVER ----------'
    puts 'Good bye!'
  end
end

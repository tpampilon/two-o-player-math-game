class Game
  attr_accessor :player1, :player2, :question, :current_player

  def initialize(player1, player2, question)
    self.player1 = player1
    self.player2 = player2
    self.question = question
    self.current_player = self.player1
  end


  
  def game_start
    
    while (self.player1.lives != 0 || self.player2.lives != 0) do

      puts "#{self.current_player.name}: #{self.question.generate}"
 
      print "> "
      answer = gets.chomp

        if (answer.to_i == self.question.answer)
          puts "#{self.player1.name}: #{self.player1.lives}/3 vs #{self.player2.name}: #{self.player2.lives}/3"
        else
          puts "#{current_player.name}: You Fool!"
          self.current_player.deduct_life
          puts "#{self.player1.name}: #{self.player1.lives}/3 vs #{self.player2.name}: #{self.player2.lives}/3"
        end
      
        if(self.player1.lives == 0 || self.player2.lives == 0)
          puts "------------------"
          puts self.current_player == self.player1 ? "#{self.player2.name} wins with a score of #{self.player2.lives}/3" : "#{self.player1.name} wins with a score of #{self.player1.lives}/3"
          puts "---- Game Over ----"
          puts "Good bye!"
          exit()
        else
          self.current_player == self.player1 ? self.current_player = self.player2 : self.current_player = self.player1
          puts "---- New Turn ----"
        end
    
    end
  
  end

end
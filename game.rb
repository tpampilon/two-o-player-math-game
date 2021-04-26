require './player'
require './questions'

class Game
  attr_accessor :player1, :player2, :question, :current_player

  def initialize(player1, player2, question)
    self.player1 = player1
    self.player2 = player2
    self.question = question
    self.current_player = self.player1
  end
  
    

end

p1 = Player.new("One")
p2 = Player.new("Two")
q = Questions.new

game = Game.new(p1, p2, q)


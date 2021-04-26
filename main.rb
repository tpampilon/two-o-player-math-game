require './player'
require './questions'
require './game'

p1 = Player.new("Player 1")
p2 = Player.new("Player 2")
q = Questions.new

game = Game.new(p1, p2, q)

game.game_start

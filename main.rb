require 'pp'
require './player'
require './question'

p1 = Player.new
p2 = Player.new
game = Game.new(p1, p2)
game.start_game

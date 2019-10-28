# frozen_string_literal: true

require_relative '../lib/game.rb'
require_relative '../lib/player.rb'

def main
  puts 'Welcome to tic tac toe'
  # puts 'Player please select your name'
  # player_1 = gets.chomp()
  flover = Player.new(color: 'X', name: 'Flover')
  christian = Player.new(color: 'O', name: 'Christian')
  players = [flover, christian]
  Game.new(players).play
end

main

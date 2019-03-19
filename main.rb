# This is the main entrypoint of the game
# It requires the other files/gems that it needs

require './game_class'
require './player_class'
require './questions_class'

puts 'Time to play an awesome nerd game!'
puts '----------- START GAME -----------'
puts ''
puts "Type in player1's name: "
print '> '
player1 = $stdin.gets.chomp
puts '----------------------------------'
puts "Type in player2's name: "
print '> '
player2 = $stdin.gets.chomp
puts '----------------------------------'

player1 = Player.new player1
player2 = Player.new player2

game = Game.new player1, player2

game.start
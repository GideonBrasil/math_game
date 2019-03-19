# This is the main entrypoint of the game
# It requires the other files/gems that it needs

require './game_class'
require './player_class'
require './questions_class'

puts 'Time to play an awesome nerd game!'
puts '----------------------------------'
puts 'Type in player1"s name: '
print '> '
player1 = $stdin.gets.chomp
puts '----------------------------------'
puts 'Type in player2"s name: '
print '> '
player2 = $stdin.gets.chomp
puts '----------------------------------'

game = Game.new
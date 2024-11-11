require_relative '../classes/players' 
require_relative '../classes/pieces'

require_relative '../classes/user_io'
require_relative '../classes/room_io'
require_relative '../classes/game_io'
require_relative '../classes/game_room'
require_relative '../classes/surakarta_actions'
require_relative '../classes/state_processor'

require_relative '../classes/board'
require_relative '../classes/loop'


# Testing out player class

player1 = Players.new("Andrew")

puts player1.GetStats

player1.ChangeUserName("John Doe")

player1.UpdateScore(99)

puts player1.GetStats

# Test out printing the board 


# Test out pieces class
piece1 = Pieces.new([0,0], "white")

puts "Piece's initial coordinates: #{piece1.coor} and its colour is: #{piece1.color}"

piece1.moveTo([5,5])

puts "The piece has now moved to #{piece1.coor}"


# Setup Game Series

io = UserIO.new()

io.getInput

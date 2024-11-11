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



board = Board.new

board.pieceSelected = [1,1]
moves = board.getLegalMoves()

board.pieces.each_with_index do |row, row_index|
    row.each_with_index do |cell, col_index|
      if cell.nil?
        print "E "
      else
        print "#{cell.color[0].upcase} "
      end
    end
    puts
  end

puts "Legal moves for [1,1]: "
puts moves.map { |x, y| "(#{x},#{y})" }.join(" ")

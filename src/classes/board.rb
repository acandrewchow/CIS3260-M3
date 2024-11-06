class Board
  attr_accessor :pieces, :player_turn, :piece_selected, :coord_request, 
                :legal_actions, :legal_moves, :legal_captures, :response

  # Constructor
  def initialize
  end

  # Public Methods
  def action(player_turn, piece_selected, coord_request, legal_action)
  end

  def get_legal_actions(player_turn, piece)
  end

  # Private Methods
  private

  def get_legal_moves
  end

  def get_legal_captures
  end

  def transverse(flag, start, direction)
  end

  def capture(player_turn, piece, coord_request)
  end

  def move(player_turn, piece, coord_request)
  end
end
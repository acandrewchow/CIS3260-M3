class SurakartaActions
  attr_accessor :playerTurn, :board, :coord

  # Constructor
  def initialize
    @board = Board.new()
    @playerTurn = 0
    @coord = nil
  end

  # Public Methods
  def action(board, coordinate)
    # Provides board with necessary info to complete an action on coords tbd in deeper methods.6x6
    # However, actual implementation details for selecting/moving/capturing are left to board itself.

    Board.action(@playerTurn, coordinate)

  end

  def requestResponse #needs to return as JSON?

    {
      playerTurn: @playerTurn,
      board: @board
      coord: @coord
    }
    json = {'playerTurn'=> @playerTurn, 'board'=> @board, 'coord' => @coord}.to_json
    return(json)

  end

  # Private Methods
  private

  def endGameCheck

    

  end

  def sendResults

      # Results sent to GameRoom?

  end
end
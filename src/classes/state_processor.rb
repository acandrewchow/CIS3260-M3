class StateProcessor
  attr_accessor :players, :gameInput, :response

  # Constructor
  # game is not defined anywhere
  def initialize(game)
    player = game.player
    gameInput = nil
    response = nil
  end

  # Public Methods
  def parseJSON(json)
    # a "MAP" object is not defined
  end

  def updateState(gameInput, map, players)
    # a "MAP" object is not defined
  end
end
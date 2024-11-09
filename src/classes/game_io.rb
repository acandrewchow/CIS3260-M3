class GameIO
  attr_accessor :game, :usrInput, :response, :stateProcessor

  # Constructor
  def initialize(game)
    @game = SurakartaActions.new()
    @usrInput = nil
    @response = nil
    @stateProcessor = StateProcessor.new(@game)
  end

  # Public Methods
  # should have a coordinate,
  # surrender, draw, etc, 
  def sendRequest(userInput)
    #send the request to Surakarta game Interface (there is no instance of SurakartaInterface in this class)
    @game.requestAction(userInput)


  end
end
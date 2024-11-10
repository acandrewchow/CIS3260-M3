class GameIO
  attr_accessor :surakarataActions, :gameInterface :usrInput, :response, :stateProcessor

  # Constructor
  def initialize(game)
    @surakarataActions = SurakartaActions.new()
    @gameInterface = GameRoomInterface.new()
    @usrInput = nil
    @response = nil
    @stateProcessor = StateProcessor.new()
  end

  # Public Methods
  # should have a coordinate,
  # surrender, draw, etc, 
  def sendRequest(userInput)
    if (userInput == "display")
      json = surakarataActions.requestResponse()
      # Map object is undefined
      map = parseJSON(json)
      return(map.to_str)
  end
end
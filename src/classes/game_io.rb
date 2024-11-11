class GameIO
  attr_accessor :SurakarataActions, :usrInput, :response, :stateProcessor

  # Constructor
  def initialize(userInput)
    @SurakarataActions = SurakartaActions.new()
    @usrInput = nil
    @response = nil
    @stateProcessor = StateProcessor.new()
  end

  # Public Methods
  # should have a coordinate,
  # surrender, draw, etc, 
  def sendRequest(userInput)
    if (userInput == "Display" || userInput == "Setup")
      json = @SurakarataActions.requestResponse()
      # Map object is undefined within the design doc
      map = @stateProcessor.parseJSON(json)
      return(map.to_str)
    elsif ((userInput.length == 2 && userInput.include?("A".."F") && userInput.include?("1".."6")))
      # Surakarta interface has no requestAction method
      @SurakarataActions.requestAction()
    elsif (userInput == "Surrender")
      return @SurakarataActions.requestResponse()
    end
  end
end
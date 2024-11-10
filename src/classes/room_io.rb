class RoomIO
  attr_accessor :gameRoom, :usrInput, :response

  # Constructor
  def initialize
    @gameRoom = nil
    @usrInput = nil
    @response = nil
  end

  # Public Methods
  def setupGameRoom()
    # Description says it generates a GameRoom object and returns it
    # Takes in a player list removed
    if (@gameRoom == nil)
      @gameRoom = GameRoom.new()
      @gameRoom.makeGame()
    end
    return(@gameRoom)
  end

  def updateRoomState
    # says that we use getInput() from this class to user. 
    # getInput is a UI method.
  end

  def displayRoomStatus
    # There is not a single sequence diagram where this is called 
    puts "#{@gameRoom.getStats}"
end
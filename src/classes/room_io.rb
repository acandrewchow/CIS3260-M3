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

  def updateRoomState(request)
    # says that we use getInput() from this class to user. 
    # getInput is a UI method.
    @gameRoom.ChangeUserName
  end

  def displayRoomStatus
    # There is not a single sequence diagram where this is called 
    # It retuns nothing so I assume that it just prints it. 
    puts "#{@gameRoom.getStats}"
  end
end
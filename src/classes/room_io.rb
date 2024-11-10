class RoomIO
  attr_accessor :gameRoom, :usrInput, :response

  # Constructor
  def initialize
    @gameRoom = nil
    @usrInput = nil
    @response = nil
  end

  # Public Methods
  def setupGameRoom(players)
    # idk how this player list is even passed in. 
    # We need to call makeGame() in GameRoomInterface but we don't have a instance of it
    # Description says it generates a GameRoom object and returns it
    @gameRoom = GameRoom.new()
    return(@gameRoom)
  end

  def updateRoomState
    # updateRoomState is suppose to call changeUserName on GameRoomInterface
    # We don't have an instance of GameRoomInterface
  end

  def displayRoomStatus
    # There is not a single sequence diagram where this is called 
    puts "{@gameRoom.getStats}"
end
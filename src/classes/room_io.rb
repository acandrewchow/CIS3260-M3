class RoomIO
  attr_accessor :gameRoom, :usrInput, :response

  # Constructor
  def initialize
    @gameRoom = GameRoom.new
    @usrInput = ""
    @response = ""
  end

  # Public Methods
  def setupGameRoom(players)
  end

  def updateRoomState
  end

  def displayRoomStatus
  end
end
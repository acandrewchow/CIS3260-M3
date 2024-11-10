module GameRoomInterface
  # we need a game room instance here in order to call the game room interface methods here
  # Public Methods
  def makeGame

  end

  def modifyGameRoom(request)
    GameRoom.modifyGameRoom(request)
  end

  def getStats
    return()
  end

  def changeUserName(userName, name)
    # There is no instance of GameRoom to even call modifyGameRoom
  end

  def updateScore(json)
  end

  def requestResponse(string)
  end
end
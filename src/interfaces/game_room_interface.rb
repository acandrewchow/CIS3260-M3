module GameRoomInterface
  # we need a game room instance here in order to call the game room interface methods here
  # Public Methods
  def makeGame
    raise "Not implemented"
  end

  def modifyGameRoom(request)
    raise "Not implemented"
  end

  def getStats
    raise "Not implemented"
  end

  def changeUserName(userName, name)
    # There is no instance of GameRoom to even call modifyGameRoom
    raise "Not implemented"
  end

  def updateScore(json)
    raise "Not implemented"
  end

  def requestResponse(string)
    raise "Not implemented"
  end
end
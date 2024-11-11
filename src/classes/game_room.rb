require_relative '../interfaces/game_room_interface'

class GameRoom
  include GameRoomInterface
  attr_accessor :players, :gamesPlayed, :gameSet

  # Constructor
  def initialize
    @players = [
      Players.new(1),  # Player 1
      Players.new(2)   # Player 2
    ]
    @games_played = 0
    @games_set = 1
  end

  # Public Methods
  # The description does not provide enought detail to implement
  # Makes a game which is in Ownership of the gameRoom
  # Also returns a string for some reason 
  def makeGame
    return("Game has been created")
  end

  # depends on the request, surrender/draw
  # changes username
  def modifyGameRoom(request)
    if (request == "Surrender")
    
    elsif (request == "changeName")
      # Not sure how we know which players name we are changing
      # For now just change both players name
      # The request doesnt contain the name
      player1 = @players[0]
      player2 = @players[1]
      player1.ChangeUserName(request)
      player2.ChangeUserName(request)
    
    elsif (request == "End")
      # We don't have an instance of SurakartaActions to do anything
    end
    # This function returns a string not sure why
    return("")
  end

  def getStats
    player1 = @players[0]
    player2 = @players[1]
 
    return("#{player1.username}: #{player1.score} wins total out of #{@games_played} games played, #{player2.username}: #{player2.score} wins total out of #{@games_played} games played")
  end
end
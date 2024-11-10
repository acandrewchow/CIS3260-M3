class GameRoom
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
  def makeGame
    return("Game has been created")
  end

  # depends on the request, surrender/draw
  # changes username
  def modifyGameRoom(request)
    
  end

  def getStats
    player1 = @players[0]
    player2 = @players[1]
 
    return("#{player1.username}: #{player1.score} wins total out of #{@games_played} games played, #{player2.username}: #{player2.score} wins total out of #{@games_played} games played")
  end
end
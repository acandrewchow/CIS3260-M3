class Players
  attr_accessor :username, :score

  # Constructor
  def initialize(index)
    #within the class list it is said to "Set Username to Player + Index of array"
    #but there is no array or anything being set through this constuctor 
    @username = "Player" + index
    @score = 0
  end

  # Public Methods
  def changeUsername(player, name)
    player.username = name
  end

  def updateScore(player, score)
    #class list says "given a finished game, updates the score of one or both players"
    player.score = score
  end

  def getStats
    "Username: #{@username}, Score: #{@score}"
  end
end
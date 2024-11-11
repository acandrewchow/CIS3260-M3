class Players
  attr_accessor :username, :score

  # Constructor
  def initialize(userName)
    #within the class list it is said to "Set Username to Player + Index of array"
    #but there is no array or anything being set through this constuctor 
    @username = userName
    @score = 0
  end

  # Public Methods
  def ChangeUserName(name)
    @username = name
  end

  def UpdateScore(score)
    #class list says "given a finished game, updates the score of one or both players"
    @score = score
  end

  def GetStats
    return("Username: #{@username}, Score: #{@score}")
  end
end
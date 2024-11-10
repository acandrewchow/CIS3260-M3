class UserIO
  attr_accessor :gameIO, roomIO :usrInput, :output, :gameRoom,

  # Constructor
  def initialize
    @gameRoom = GameRoom.new()
    @gameIO = nil
    @roomIO = nil
    @usrInput = nil
    @output = "Welcome to Surakarta!"
    puts @output
  end

  # Public Methods
  # Displays a 6x6 board
  # . represent a spot in the board if there is no piece present
  def displayBoard(board)
    gameIO.sendRequest(@usrInput)
    board.pieces.each do |row|
      puts row.map { |piece| piece || '.'}.join(' ')
  end

  def getInput
    # Get the user input and set it as usrInput (this is unexplained)
    print "$ "
    input = gets
    @usrInput = input
    # According to the design group you switch depending on the user input 
    if (input == "Setup")
      @roomIO.setupGameRoom()
    elsif(input == "updateRoom")
      @roomIO.updateRoomState()
    elsif(input == "displayRoom")
      @roomIO.displayRoomStatus()
    elsif (input.length == 2 && input.include?("A".."F") && input.include?("1".."6"))
      @gameIO.sendRequest(input)
    else
      puts "Nothing entered was a valid input\n"
    end
    return(@usrInput)
  end

  def displayMessage(message)
    # ??? 
    output = @gameIO.sendRequest(message)
    puts "{output}"
  end

  def startGame

    #uc402
    puts "$ Enter Player 1's name:"
    player1_name = gets
    puts "$ Enter Player 2's name:"
    player2_name = gets

    #uc403
    puts "$ Select game mode (1: Total score mode, 2: # Matches mode):"
    game_mode = gets

    if game_mode == 1
      puts "$ Enter the total score to win:"
      total_score = gets
      #need sendReq here
      
    elsif scoring_mode == 2
      puts "$ Enter the number of matches to play:"
      number_of_matches = gets
      #need sendReq here

    else
      puts "* Invalid input. Please restart game setup."
      return(@gameIO)
end
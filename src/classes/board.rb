class Board
  attr_accessor :pieces, :playerTurn, :pieceSelected, :coordRequest, 
                :legalActions, :legalMoves, :legalCaptures, :response

  # Constructor
  def initialize
    @pieces = Array.new(6) { Array.new(6) } #make the board

    (0...6).each do |row|
      (0...6).each do |col|
        if(row < 2)
          @pieces[row][col] = Pieces.new([row,col],'Black')
        elsif(row > 3)
          @pieces[row][col] = Pieces.new([row,col],'White')
        else
          @pieces[row][col] = nil
        end
      end
    end
    @player_turn = nil  
    @piece_selected = nil 
    @coord_request = nil
  end

  # # Public Methods
  # def action(player_turn, piece_selected, coord_request, legal_action)# no return type?????

  #   #check if a piece is selected
  #   if(piece_selected){
  #     actions = getLegalActions(player_turn, piece_selected) #get the legal actions for this piece 
  #     if(actions.include?(coord_request)){#check if the coord requested is in actions
  #       #check if its in legal moves
  #       moves = getLegalMoves() #idk how this is going to work, getlegalMoves doesnt take in any values so how do you check if that specific move is legal
  #       #(b/c in getlegalmoves it says that it deals with one specific piece???)
  #       if(moves.include?(coord_request)){#check if move is in legal moves
  #         captures = getLegalCaptures() #get the legal captures has the same issue as getlegalmoves?????
  #         move(player_turn, piece_selected, coord_request)#make the move
  #         if(captures.include?(coord_request)){#check if move is in legal captures
  #           capture(player_turn, piece_selected, coord_request)#capture the piece
  #           #check for end game should go here but there is no def for a end game function or how to determine the end game in the class list 
  #           #change turn
  #           if(@playerTurn == 1){
  #             @playerTurn = 2
  #           }else{
  #             @playerTurn = 1
  #           }
  #           #deselect Piece
  #           @piece_selected = nil 
  #         }
  #       }else{#move is not legal
  #         return "error"
  #       } 
  #     }else{
  #       return "error"
  #     }
  #   }else{#no piece so we use coord_request
  #     #check if there is piece there
  #     if(pieces.include?(piece_selected)){
  #       @pieceSelected = piece_selected #set our pieceselected to the selected piece that is pasted through
  #       return "piece has been selected"
  #     }else{#if no piece then return error
  #       return "error"
  #     }
  #   }

  # end

  def getLegalActions(player_turn, piece)#within the description of this function it says to call getLegalMoves and getLegalCaptures,
    # but the function that calls this is also told to make the same calls. does this make this function obsolete?
  end

  # Private Methods
  #private

  def getLegalMoves
    moves = []
    x, y = @pieceSelected
    directions = [
      [0, 1],  #up
      [0, -1], #down
      [1, 0],  #right
      [-1, 0], #left
      [1, 1],  #top-right diagonal
      [1, -1], #bottom-right diagonal
      [-1, 1], #top-left diagonal
      [-1, -1] #bottom-left diagonal
    ]

    directions.each do |dx, dy|
      new_x, new_y = x + dx, y + dy

      #check if the tile is empty
      if new_x.between?(0, 5) && new_y.between?(0, 5) && @pieces[new_x][new_y].nil?
        moves << [new_x, new_y]
      end
    end

    #here we should find loops to get extra moves but alas

    return moves

  end

  def getLegalCaptures
  end

  def transverse(flag, start, direction)

    #check the flag 
    if flag == 0
      return nil if piece_at(coord) #return if the piece it there
    elsif flag <= 4
      return piece_at(coord) if piece_at(coord) #go deeper
    end

  end

  def capture(player_turn, piece, coord_request)
  end

  def move(player_turn, piece, coord_request)
    #they want us to check if the move is valid here again but this is done within actions() which calls this method so it just makes this part redundant?
    if(getLegalMoves.includes?(coord_request)) 

      piece.moveTo(coord_request)#move the piece
      #deselect Piece
      @piece_selected = nil #this is redundant b/c this is done in the actions method after the function call????
    end
  end
  
end
class Board
  attr_accessor :pieces, :playerTurn, :pieceSelected, :coordRequest, 
                :legalActions, :legalMoves, :legalCaptures, :response

  # Constructor
  def initialize
  end

  # Public Methods
  def action(player_turn, piece_selected, coord_request, legal_action)

    #check if a piece is selected
    if(piece_selected){
      actions = getLegalActions(player_turn, piece_selected) #get the legal actions for this piece 
      if(actions.include?(coord_request)){#check if the coord requested is in actions
        #check if its in legal moves
        moves = getLegalMoves() #idk how this is going to work, getlegalMoves doesnt take in any values so how do you check if that specific move is legal
        #(b/c in getlegalmoves it says that it deals with one specific piece???)
        if(moves.include?(coord_request)){#check if move is in legal moves
          captures = getLegalCaptures() #get the legal captures has the same issue as getlegalmoves?????
          if(captures.include?(coord_request)){#check if move is in legal captures
            capture(player_turn, piece_selected, coord_request)#capture the piece
            #check for end game should go here but there is no def for a end game function or how to determine the end game in the class list 
            #change turn
            if(@playerTurn == 1){
              @playerTurn = 2
            }else{
              @playerTurn = 1
            }
            #deselect Piece
            @piece_selected = nil 
          }
        }else{#move is not legal
          return "error"
        } 
      }else{
        return "error"
      }
    }else{#no piece so we use coord_request
      #check if there is piece there
      if(pieces.include?(piece_selected)){
        @pieceSelected = piece_selected #set our pieceselected to the selected piece that is pasted through
        return "piece has been selected"
      }else{#if no piece then return error
        return "error"
      }
    }

  end

  def getLegalActions(player_turn, piece)
  end

  # Private Methods
  private

  def getLegalMoves
  end

  def getLegalCaptures
  end

  def transverse(flag, start, direction)
  end

  def capture(player_turn, piece, coord_request)
  end

  def move(player_turn, piece, coord_request)
  end
end
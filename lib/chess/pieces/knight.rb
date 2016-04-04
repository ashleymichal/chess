module Chess
  class Knight
    include GamePiece
    
    MOVES = [ [ 1,2], [ 1,-2],
              [-1,2], [-1,-2],
              [ 2,1], [ 2,-1],
              [-2,1], [-2,-1] ]

    def initialize
    end

    def moves
      MOVES
    end

  end
end
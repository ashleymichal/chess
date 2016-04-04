module Chess
  class Queen
    include GamePiece

    MOVES = Rook::MOVES + Bishop::MOVES

    def initialize
    end

    def moves
      MOVES
    end
  end
end
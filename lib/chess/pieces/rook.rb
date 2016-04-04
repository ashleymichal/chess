module Chess
  class Rook
    include GamePiece
    
    MOVES = (-8..8).map { |n| [[0, n], [n, 0]] }.flatten(1).uniq

    def initialize
    end

    def moves
      MOVES
    end
  end
end
module Chess
  class Queen
    MOVES = Rook::MOVES + Bishop::MOVES

    def initialize
    end

    def possible_moves(position)
      MOVES.map { |move| [position,move].transpose.map { |x| x.reduce(:+) } }
    end
  end
end
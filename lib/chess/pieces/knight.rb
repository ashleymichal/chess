module Chess
  class Knight
    MOVES = [ [ 1,2], [ 1,-2],
              [-1,2], [-1,-2],
              [ 2,1], [ 2,-1],
              [-2,1], [-2,-1] ]

    def initialize
    end

    def possible_moves(position)
      MOVES.map { |move| [position,move].transpose.map { |x| x.reduce(:+) } }
    end
  end
end
module Chess
  class Rook
    MOVES = (-8..8).map { |n| [[0, n], [n, 0]] }.flatten(1).uniq

    def initialize
    end

    def possible_moves(position)
      MOVES.map { |move| [position,move].transpose.map { |x| x.reduce(:+) } }
    end
  end
end
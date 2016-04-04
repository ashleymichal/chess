module Chess
  class Bishop
    MOVES = (-8..8).map do |n| 
      [[n, n], [n, -n], 
       [-n, -n], [-n, n]]
     end.flatten(1).uniq

    def initialize
    end

    def possible_moves(position)
      MOVES.map { |move| [position,move].transpose.map { |x| x.reduce(:+) } }
    end
  end
end
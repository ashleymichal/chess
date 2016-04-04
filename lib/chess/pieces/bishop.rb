module Chess
  class Bishop
    include Chess::GamePiece

    attr_reader :player
    
    MOVES = (-8..8).map do |n| 
      [[n, n], [n, -n], 
      [-n, -n], [-n, n]]
    end.flatten(1).uniq

    def initialize(input = {})
      @player = input[:player]
    end

    def moves
      MOVES
    end

    # def possible_moves(position)
    #   MOVES.map { |move| [position,move].transpose.map { |x| x.reduce(:+) } }
    # end

    # def belongs_to?(current_player)
    #   current_player = player
    # end
  end
end
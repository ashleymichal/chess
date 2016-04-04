module Chess
  module GamePiece
    def possible_moves(position)
      moves.map { |move| [position,move].transpose.map { |x| x.reduce(:+) } }
    end

    def belongs_to?(current_player)
      current_player = player
    end
  end
end
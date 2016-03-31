module Chess
  class Knight
    @@MOVES = [ [ 1,2], [ 1,-2],
                [-1,2], [-1,-2],
                [ 2,1], [ 2,-1],
                [-2,1], [-2,-1] ]

    attr_reader :position, :path
    def initialize position, path = []
      @position = position
      @path = path + [position]
      @board = Board.new
    end

    def possible_moves
      moves = []
      @@MOVES.each do |move|
        moves << [position,move].transpose.map {|x| x.reduce(:+)}
      end
      moves.select { |position| @board.spaces.include?(position) }
    end
  end
end
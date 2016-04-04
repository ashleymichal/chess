module Chess
  ROWS = 8
  COLUMNS = 8

  class Board
    attr_accessor :grid

    def initialize(input = {})
      @grid = input.fetch(:grid, default_grid)
    end    

    def formatted_grid
      grid.each do |row|
        puts row.map { |cell| cell.value.nil? ? empty_slot : cell.value }.join(" | ")
      end
    end

    def get_cell(x, y)
      grid[x][y]
    end

    def set_cell(x, y, value)
      get_cell(x, y).value = value
    end

    def game_over
      return :checkmate if checkmate?
      return :draw if draw?
      false
    end

    private

      def default_grid
        Array.new(COLUMNS) { Array.new(ROWS) { Cell.new } }
      end

      def empty_slot
        "_"
      end

      def checkmate?
        # TODO
      end

      def check?
        # TODO
      end

      def draw?
        # TODO
      end

  end
end
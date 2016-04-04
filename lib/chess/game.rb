module Chess
  class Game
    attr_reader :players, :board, :current_player, :other_player
    def initialize(players, board = Board.new)
      @players = players
      @board = board
      @current_player, @other_player = players.shuffle
    end

    def switch_players
      @current_player, @other_player = @other_player, @current_player
    end

    def solicit_move
      "#{current_player.name}: Enter a column number between 1 and 7 to make a move"
    end

    def get_move(human_move = gets.chomp)
      human_move_to_coordinates(human_move)
    end

    def move(from, to)
      return :empty if from.value.nil?
      return :not_your_piece if from.value.belongs_to?(@other_player)
      return :blocked if to.value.belongs_to?(@current_player)
      return :invalid_move unless to.valid_move?(from.value)
      @current_player.taken << cell.value
      from.value, to.value = nil, from.value
    end

    def game_over_message
      return "#{current_player.name} won!" if board.game_over == :checkmate
      return "The game ended in a tie" if board.game_over == :draw
    end

    def play
      puts "#{current_player.name} has randomly been selected as the first player"
      while true
        board.formatted_grid
        puts ""
        puts solicit_move
        from, to = get_move ## < What does this return? A Nested Array? Cell instances?
        move(from, to, current_player.color)
        if board.game_over
          puts game_over_message
          board.formatted_grid
          return
        else
          switch_players
        end
      end
    end
     
    private
     
      def human_move_to_coordinates(human_move)
      end

  end
end
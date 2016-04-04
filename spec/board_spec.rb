require 'spec_helper'

module Chess

  describe Board do

    context "#initialize" do
      it "initializes the board with a grid" do
        expect { Board.new(grid: "grid") }.not_to raise_error
      end

      # dropping pieces is easier with columns of rows
      it "sets the grid with default number of columns" do
        board = Board.new
        expect(board.grid).to have(COLUMNS).things
      end

      it "sets the grid with default numnber of rows" do
        board = Board.new
        ROWS.times do |column|
          expect(board.grid[column]).to have(ROWS).things
        end
      end
    end

    context "#grid" do
      it "returns the grid" do
        board = Board.new(grid: "blah")
        expect(board.grid).to eq "blah"
      end
    end

    context "#get_cell" do
      it "returns the cell based on (x,y) coordinate" do
        grid = [["","",""],["","Barbie",""],["","",""]]
        board = Board.new(grid: grid)
        expect(board.get_cell(1,1)).to eq "Barbie"
      end
    end

    context "#set_cell" do
      it "updates the value of the cell object at (x, y) coordinates" do
        Cat = Struct.new(:value)
        grid = [[Cat.new("cool"),"",""],["","",""],["","",""]]
        board = Board.new(grid: grid)
        board.set_cell(0, 0, "meow")
        expect(board.get_cell(0, 0).value).to eq "meow"
      end
    end

    TestCell = Struct.new(:value)
    let(:white) { TestCell.new("W") }
    let(:black) { TestCell.new("B") }
    let(:empty) { TestCell.new }

    context "#check?"
    
    context "#game_over" do
      it "returns :checkmate if checkmate? is true" do
        board = Board.new
        allow(board).to receive(:checkmate?) { true }
        expect(board.game_over).to eq :checkmate
      end

      it "returns :draw if checkmate? is false and draw? is true" do
        board = Board.new
        allow(board).to receive(:checkmate?) { false }
        allow(board).to receive(:draw?) { true }
        expect(board.game_over).to eq :draw
      end

      it "returns false if checkmate? is false and draw? is false" do
        board = Board.new
        allow(board).to receive(:checkmate?) { false }
        allow(board).to receive(:draw?) { false }
        expect(board.game_over).to be false
      end

    end
  end
  
end
require 'spec_helper'

module Chess

  describe Bishop do
    
    context "#possible_moves" do
      it "returns an array of possible_moves" do
        bishop = Bishop.new
        expect(bishop.possible_moves([0,0])).to be_instance_of(Array)
      end
    end

    context "#belongs_to?" do
      it "returns true if the piece belongs to the current player"
      it "returns false if the piece belongs to the other player"
    end

  end

end
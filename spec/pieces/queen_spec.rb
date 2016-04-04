require 'spec_helper'

module Chess

  describe Queen do
    
    context "#possible_moves" do
      it "returns an array of possible_moves" do
        queen = Queen.new
        expect(queen.possible_moves([0,0])).to be_instance_of(Array)
      end
    end

  end

end
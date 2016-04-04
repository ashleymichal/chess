require 'spec_helper'

module Chess

  describe Bishop do
    
    context "#possible_moves" do
      it "returns an array of possible_moves" do
        bishop = Bishop.new
        bishop.possible_moves([5,5]).each { |move| puts move.inspect }
        expect(bishop.possible_moves([0,0])).to be_instance_of(Array)
      end
    end

  end

end
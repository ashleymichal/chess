require 'spec_helper'

module Chess

  describe Rook do
    
    context "#possible_moves" do
      it "returns an array of possible_moves" do
        rook = Rook.new
        rook.possible_moves([5,5]).each { |move| puts move.inspect }
        expect(rook.possible_moves([0,0])).to be_instance_of(Array)
      end
    end

  end

end
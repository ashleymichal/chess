require 'spec_helper'

module Chess

  describe Knight do
    
    context "#possible_moves" do
      it "returns an array of possible_moves" do
        knight = Knight.new
        expect(knight.possible_moves([0,0])).to be_instance_of(Array)
      end
    end

  end

end
require_relative "../citizen.rb"

describe Citizen do
  # TODO
  describe "#can_vote?" do
    it "returns true if the citizen is 18 years old" do
      citizen = Citizen.new("","",18)
      expect(citizen.can_vote?).to eq(true)
    end

    it "returns false if citizen is less or equals than 17 years old" do
      citizen = Citizen.new("","",17)
      expect(citizen.can_vote?).to eq(false)
    end
  end
end

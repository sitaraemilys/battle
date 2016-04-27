require 'game'

describe Game do

  subject(:game) {described_class.new}
  let(:bob) {double :player, name: "bob"}
  let(:ross) {double :player, name: "ross"}


  describe "#whallop" do
    it "damages the other player" do
      expect(ross).to receive(:been_hit)
      game.whallop ross
    end
  end


end

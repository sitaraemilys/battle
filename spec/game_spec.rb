require 'game'
require 'player'

describe Game do

  let(:bob) {double :player, name: "bob"}
  let(:ross) {double :player, name: "ross"}
  let(:loser) {Player.new("loser", 1)}
  subject(:game) {described_class.new bob, ross}
  subject(:loser_game) {described_class.new loser, ross}

  describe "#initialize" do
    it "has a player 1" do
      expect(game.player_1).to eq bob
    end

    it "has a player 2" do
      expect(game.player_2).to eq ross
    end

    it "assigns an initial attacker" do
      expect(game.attacker).to eq bob
    end
  end

  describe "#whallop" do
    it "damages the other player" do
      expect(ross).to receive(:been_hit)
      game.whallop ross
    end
  end

  describe "#switch" do
    it "attacker equals player_2" do
      game.switch
      expect(game.attacker).to eq ross
    end

    it "defender equals player_1" do
      game.switch
      expect(game.defender).to eq bob
    end
  end

  describe "#game_over?" do
    it "checks if either player is dead" do
      loser.been_hit
      expect(loser_game.game_over?).to eq true
    end
  end
end

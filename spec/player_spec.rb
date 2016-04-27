require 'player.rb'


describe Player do

  subject(:bob) {described_class.new "Bob"}
  subject(:ross) {described_class.new "Ross"}

    it "has a name" do
      expect(bob.name).to eq "Bob"
    end

    it "starts with 60 hp" do
      expect(bob.hp).to eq described_class::DEFAULT_HP
    end

    describe "#been_hit" do
      it "reduces HP by 10" do
        expect{bob.been_hit}.to change{bob.hp}.by -10
      end
    end

    describe "#whallop" do
      it "damages the other player" do
        expect(ross).to receive(:been_hit)
        bob.whallop ross
      end
    end




end

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
      it "reduces HP" do
        allow(bob).to receive(:rand).and_return 9
        expect{bob.been_hit}.to change{bob.hp}.by -10
      end
    end

    describe "#dead" do
      it "dead returns true" do
        100.times { bob.been_hit }
        expect(bob.dead?).to be true
      end
    end
    describe "#eat_bananas" do
      it "adds hitpoints" do
        allow(bob).to receive(:rand).and_return 10
        expect{bob.eat_bananas}.to change{bob.hp}.by 10
      end

    end
end

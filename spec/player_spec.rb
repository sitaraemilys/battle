require 'player.rb'


describe Player do

  subject(:player) {described_class.new "Bob"}
    it "has a name" do
      expect(player.name).to eq "Bob"
    end




end

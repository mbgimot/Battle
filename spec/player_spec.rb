require 'player'

describe Player do
  subject(:player1) { described_class.new("player1") }
  subject(:player2) { described_class.new("player2") }

  describe '#name' do
    it "returns it's name" do
      expect(player1.name).to eq("player1")
    end
  end

  describe '#points' do
    it "returns the points" do
      expect(player1.points).to eq(described_class::DEFAULT_HIT_POINTS)
    end
  end

  describe '#attack' do
    it "attacks another player" do
      expect(player2).to receive(:reduce)
      player1.attack(player2)
    end
  end

  describe '#reduce' do
    it "damages the player" do
      expect{player2.reduce}.to change{player2.points}.by(-10)
    end
  end
end

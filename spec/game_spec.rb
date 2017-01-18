require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player1) { instance_double("player1") }
  let(:player2) { instance_double("player2") }

  describe '#attack' do
    it "attacks another player" do
      expect(player1).to receive(:reduce)
      game.attack(player1)
    end
  end
end

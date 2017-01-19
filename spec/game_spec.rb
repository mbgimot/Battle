require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { instance_double("player1") }
  let(:player2) { instance_double("player2") }

  describe '#attack' do
    it "attacks another player" do
      expect(player2).to receive(:reduce)
      game.attack
    end
  end

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq player1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player2).to eq player2
    end
  end

  describe '#turn' do
    it "changes the player to attack" do
      game.turn
      expect(game.current_player_index).to eq(1)
    end
  end
end

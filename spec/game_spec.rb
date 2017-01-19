require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { instance_double("Player") }
  let(:player2) { instance_double("Player") }

  before do
    allow(player1).to receive(:points){10}
    allow(player2).to receive(:points){10}
  end

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

  describe '#not_game_over?' do
    it "is true when a player's points are zero" do
      allow(player2).to receive(:reduce)
      allow(player2).to receive(:points){0}
      game.attack
      expect(game.not_game_over?).to be false
    end
    
    it "is false when a player's points are > zero" do
      expect(game.not_game_over?).to be true
    end
  end
end

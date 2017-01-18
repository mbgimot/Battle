require 'player'

describe Player do
  subject(:player) { described_class.new("test") }
  it "returns it's name" do
    expect(player.name).to eq("test")
  end
end

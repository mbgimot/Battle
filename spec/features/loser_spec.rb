require 'spec_helper'
require 'player'

feature 'losing' do
  x = ((Player::DEFAULT_HIT_POINTS / 10) - 1)*2

  scenario "lets player2 know they've lost" do
    sign_in_and_play
    x.times {attack_and_play}
    click_link('attack')
    expect(page).to have_content("Mica has lost the game!!!")
  end
end

require 'spec_helper'

feature 'player 1 attack' do
  scenario 'player 1 attacks player 2' do
    visit('/play')
    click_link('Player 1 Attack')
    expect(page).to have_text('Confirmed!')
  end
end

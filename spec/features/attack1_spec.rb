require 'spec_helper'

feature '#attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_link('attack')
    expect(page).to have_text('Mitch attacked Mica.')
  end

  scenario "player 1 reduces player2's points" do
    sign_in_and_play
    click_link('attack')
    expect(page).to have_content('Mica points: 50')
  end

  scenario 'player 2 attacks player 1' do
    sign_in_and_play
    click_link('attack')
    click_link('OK')
    click_link('attack')
    expect(page).to have_text('Mica attacked Mitch.')
  end

  scenario "player 2 reduces player 1's points" do
    sign_in_and_play
    click_link('attack')
    click_link('OK')
    click_link('attack')
    expect(page).to have_content('Mitch points: 50')
  end
end

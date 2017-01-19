require 'spec_helper'

feature 'player 1 attack' do
  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_link('attack')
    expect(page).to have_text('Confirmed!')
  end
  scenario "player 1 reduces player2's points" do
    sign_in_and_play
    click_link('attack')
    expect(page).to have_content(50)
  end
end

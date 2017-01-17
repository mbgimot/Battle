require 'spec_helper'

feature "Entry form"  do
  scenario "displays players names" do
    visit("/")

    fill_in :player1, with: 'Mitch'
    fill_in :player2, with: 'Mica'
    click_button 'submit'

    expect(page).to have_content('Mitch')
    expect(page).to have_content('Mica')
  end
end

feature "Hit points" do
  scenario "player 1 can see player 2's" do
    visit('/')

    fill_in :player2, with: 'Mica'
    click_button 'submit'
    expect(page).to have_content('Mica: 60HP')
  end
end

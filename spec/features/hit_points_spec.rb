require 'spec_helper'

feature "Hit points" do
  scenario "player 1 can see player 2's" do
    sign_in_and_play
    expect(page).to have_content('Mica: 60HP')
  end
end

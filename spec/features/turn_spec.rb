require 'spec_helper'

feature "#turn" do
  scenario "it changes which player's turn it is" do
    sign_in_and_play
    click_link('attack')
    click_link('OK')
    click_link('attack')
    expect(page).to have_content("Mica attacked Mitch")
  end
end

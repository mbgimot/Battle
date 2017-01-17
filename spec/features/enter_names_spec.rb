require 'spec_helper'

feature "Entry form"  do
  scenario "displays players names" do
    sign_in_and_play
    expect(page).to have_content('Mitch')
    expect(page).to have_content('Mica')
  end
end

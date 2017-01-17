


def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Mitch'
  fill_in :player2, with: 'Mica'
  click_button 'submit'
end

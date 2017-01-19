def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Mitch'
  fill_in :player2, with: 'Mica'
  click_button 'submit'
end

def attack_and_play
  click_link("attack")
  click_link('OK')
end

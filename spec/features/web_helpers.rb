
def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Hanna'
  fill_in :player_2_name, with: 'Ruta'
  click_button 'Submit'
end
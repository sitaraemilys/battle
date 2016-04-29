def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Ross"
  fill_in :player_2_name, with: "Bob"
  click_button "Push me!"
end

def tickle
  click_button 'TICKLE!'
end

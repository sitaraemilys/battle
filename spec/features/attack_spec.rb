
feature 'attacks a player' do
  scenario 'attacks player 2' do

    sign_in_and_play
    click_button 'TICKLE!'
    expect(page).to have_content 'Ross tickled Bob till Bob peed!'

  end

  scenario 'other players turn to attack' do
    sign_in_and_play
    click_button 'TICKLE!'
    expect(page).to have_content 'Ross tickled Bob till Bob peed! HE HE HE Ross:60 bananas Bob:50 bananas Bob, are you going to just stand there and let Ross tickle you?! go on, tickle Ross back!'
  end

end

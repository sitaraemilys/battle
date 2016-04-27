
feature 'attacks a player' do
  scenario 'attacks player 2' do

    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Bob punched Ross in the face! WTF?!'

  end

  scenario 'other players turn to attack' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Ross, get up and do something you lazy S.O.B!'

  end

end

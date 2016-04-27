
feature 'Attack player 2' do

  scenario ' Attack player 2 with confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Hanna attacked Ruta'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
   click_link 'OK'
    expect(page).not_to have_content 'Ruta: 100HP'
    expect(page).to have_content 'Ruta: 90HP'
  end
end
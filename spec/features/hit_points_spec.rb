feature 'View hit points' do
  scenario 'See player 2s hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Ruta: 100HP'
  end

 scenario 'See player 1 hit points' do
   sign_in_and_play
   expect(page).to have_content 'Hanna: 100HP'
 end

end

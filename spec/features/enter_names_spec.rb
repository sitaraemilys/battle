
feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Hanna vs. Ruta'
  end
end

feature 'View hit points' do
  scenario 'See player 2s hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Ruta: 100HP'
  end
end



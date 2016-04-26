
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Hanna'
    fill_in :player_2_name, with: 'Ruta'
    click_button 'Submit'
    expect(page).to have_content 'Hanna vs. Ruta'
  end
end

feature 'View hit points' do
  scenario 'See player 2s hitpoints' do
    visit ('/')
    fill_in :player_1_name, with: 'Hanna'
    fill_in :player_2_name, with: 'Ruta'
    click_button 'Submit'
    expect(page).to have_content 'Ruta: 100HP'
  end
end

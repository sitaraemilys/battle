
feature 'view players hit points' do
  scenario 'view player 2s hit points' do
    sign_in_and_play
    expect(page).to have_content "Bob:60 bananas"
  end

  scenario 'view player 1s hit points' do
    sign_in_and_play
    expect(page).to have_content "Ross:60 bananas"
  end

  scenario 'hit points go up when the banana button is pressed' do
    visit('/')
    fill_in :player_1_name, with: "Ross"
    fill_in :player_2_name, with: "Bob"
    click_button "Push me!"
    click_button "BANANA!"
    expect(page).to have_content "Nom Nom, bananas in my belly!"
  end
end

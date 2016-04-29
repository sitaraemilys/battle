
feature 'view players hit points' do
  scenario 'view player 2s hit points' do

    sign_in_and_play
    expect(page).to have_content "Bob:60 bananas"

  end

  scenario 'view player 1s hit points' do

    sign_in_and_play
    expect(page).to have_content "Ross:60 bananas"

  end

end

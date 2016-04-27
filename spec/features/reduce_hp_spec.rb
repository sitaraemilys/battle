
feature 'reduces players hp' do
  scenario 'after attack' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content "Ross has 50HP left"
  end

  scenario 'after attack' do
    sign_in_and_play
    click_button 'Attack!'
    click_button 'Attack!'
    expect(page).to have_content "Bob has 50HP left"
  end
end

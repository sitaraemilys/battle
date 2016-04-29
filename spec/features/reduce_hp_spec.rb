
feature 'reduces players hp' do
  scenario 'after attack' do
    sign_in_and_play
    click_button 'TICKLE!'
    expect(page).to have_content "Bob:50 bananas"
  end

  scenario 'after attack' do
    sign_in_and_play
    click_button 'TICKLE!'
    click_button 'TICKLE!'
    expect(page).to have_content "Ross:50 bananas"
  end
end

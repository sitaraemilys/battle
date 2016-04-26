
feature 'Enter names' do
  scenario "player one can submit name" do
    sign_in_and_play
    expect(page).to have_text("Player One: Sity")
  end

  scenario "player two can submit name" do
    sign_in_and_play
    expect(page).to have_text("Player Two: Alex")
  end

end

feature 'Display hit points' do
  scenario "player one starts with 20 hit points" do
    sign_in_and_play
    expect(page).to have_text("Player One HP: 20")
  end

  scenario "player two starts with 20 hit points" do
    sign_in_and_play
    expect(page).to have_text("Player Two HP: 20")
  end
end


feature 'Enter names' do
  scenario "player one can submit name" do
    visit "/"

    fill_in "player1_name", :with => "Alex"
    click_button "Submit"

    expect(page).to have_text("Player One: Alex")
  end

  scenario "player two can submit name" do
    visit "/"

    fill_in "player2_name", :with => "Sity"
    click_button "Submit"

    expect(page).to have_text("Player Two: Sity")
  end

end

feature 'Display hit points' do
  scenario "player one starts with 20 hit points" do
    visit "/"

    fill_in "player1_name", :with => "Alex"
    click_button "Submit"

    expect(page).to have_text("Player One HP: 20")
  end

  scenario "player two starts with 20 hit points" do
    visit "/"

    fill_in "player2_name", :with => "Sity"
    click_button "Submit"

    expect(page).to have_text("Player Two HP: 20")
  end
end

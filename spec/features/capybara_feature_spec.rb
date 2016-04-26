
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

  scenario "two players can submit names" do
    visit "/"

    fill_in "player1_name", :with => "Alex"
    fill_in "player2_name", :with => "Sity"
    click_button "Submit"

    expect(page).to have_text("Player One: Alex\nPlayer Two: Sity")
  end
  

 end

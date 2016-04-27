require 'spec_helper'

feature 'view players hit points' do
  scenario 'view player 2s hit points' do

    sign_in_and_play
    expect(page).to have_content "Ross has 60HP"

  end

  scenario 'view player 1s hit points' do

    sign_in_and_play
    expect(page).to have_content "Bob has 60HP"

  end

end

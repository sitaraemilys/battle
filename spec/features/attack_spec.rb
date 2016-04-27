require 'spec_helper'

feature 'attacks a player' do
  scenario 'attacks player 2' do

    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Bob punched Ross in the face! WTF?!'

  end
end

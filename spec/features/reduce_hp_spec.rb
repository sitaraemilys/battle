
feature 'reduces players hp' do


  xscenario 'after attack' do
    allow(Kernel).to receive(:rand).and_return(9)
    sign_in_and_play
    5.times { tickle }
    expect(page).to have_content "Bob:50 bananas"
  end

  xscenario 'after attack' do
    sign_in_and_play
    click_button 'TICKLE!'
    click_button 'TICKLE!'
    expect(page).to have_content "Ross:50 bananas"
  end

end

feature 'Enter names' do
  scenario 'Opening homepage allows players to enter their names' do
    visit ('/')
    fill_in :player_1_name, with: 'John'
    fill_in :player_2_name, with: 'Peter'
    click_button 'Begin Game!'
    expect(page).to have_content 'John vs Peter'
  end
end

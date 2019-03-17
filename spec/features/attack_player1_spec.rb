feature 'attacking player 2' do
  scenario 'lets you attack player 2' do
    fill_in_names
    click_link("Attack")
    expect(page).to have_content("You have attacked John")
    expect(page).to have_content("John HP: 90")
    click_link("Attack")
    expect(page).to have_content("You have attacked Thomas")
    expect(page).to have_content("Thomas HP: 90")
  end
end

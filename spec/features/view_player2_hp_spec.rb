feature 'view player 2 hit points do' do
  scenario 'lets you see player 2 hit points' do
    fill_in_names
    expect(page).to have_content('John HP: 100')
  end
end

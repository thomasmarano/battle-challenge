feature 'testing Capybara works' do
  scenario 'can run a web page and test content' do
    fill_in_names
    expect(page).to have_content('Thomas')
    expect(page).to have_content('John')
  end
end

feature 'testing Capybara works' do
  scenario 'can run a web page and test content' do
    visit ('/')
    expect(page).to have_content('Howdy Thomas')
  end
end

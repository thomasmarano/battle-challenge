def fill_in_names
  visit ('/')
  fill_in('player1_name', with: "Thomas")
  fill_in('player2_name', with: "John")
  click_on('Submit')
end

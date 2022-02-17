Given('A user goes to Amazon Home page') do
  @amazon_page = HomePage.new(@browser)
  expect(@amazon_page.is_displayed?).to eql(true)
end

When('The user selects a {string} in the dropdown list') do |category|
  @amazon_page.select_list(category)
end

When('The user clicks the search button') do
  @amazon_page.click_search_button
end

Then('Amazon should return a page with the selected {string}') do |category|
  @computer_page = CategoryPage.new(@browser)
  expect(@computer_page.is_displayed?(category)).to eql(true)
end


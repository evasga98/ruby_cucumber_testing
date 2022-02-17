require_relative '../pages/home_page.rb'

Given('A user goes to Amazon Home page') do
  @amazon_page = HomePage.new(@browser)
  expect(@amazon_page.is_displayed?).to eql(true)
end

When('The user selects a category in the dropdown list') do
  @amazon_page.select_list
end

When('The user clicks the search button') do
  @amazon_page.click_search_button
end

Then('Amazon should return a page with the selected category') do
  
end


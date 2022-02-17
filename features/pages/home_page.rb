class HomePage

  attr_reader :browser

  SELECT_LIST = {id: 'searchDropdownBox'}
  SEARCH_BUTTON = {id: 'nav-search-submit-button'}

  def initialize(browser)
    @browser = browser
  end
  
  def is_displayed?
    browser.title.include?('Amazon.com. Spend less.').should == true
  end

  def select_list(category)
    drop_down = browser.find_element(SELECT_LIST)
    choose = Selenium::WebDriver::Support::Select.new(drop_down)
    choose.select_by(:text, category)
  end

  def click_search_button
    browser.find_element(SEARCH_BUTTON).click
  end

end
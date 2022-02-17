class HomePage

  attr_reader :driver

  SELECT_LIST = {id: 'searchDropdownBox'}
  OPTION = 'search-alias=arts-crafts-intl-ship'
  SEARCH_BUTTON = {id: 'nav-search-submit-button'}

  def initialize(driver)
    @driver = driver
  end
  
  def is_displayed?
    driver.title.include?('Amazon.com. Gasta menos. Sonríe más.').should == true
  end

  def select_list
    drop_down = driver.find_element(SELECT_LIST)
    choose = Selenium::WebDriver::Support::Select.new(drop_down)
    choose.select_by(:value, OPTION)
  end

  def click_search_button
    driver.find_element(SEARCH_BUTTON).click
  end

end
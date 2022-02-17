class ComputerPage

    attr_reader :browser
  
    SELECT_LIST = {id: 'searchDropdownBox'}
    PAGE_TITLE = {class: 'fst-h1-st pageBanner'}
    
    def initialize(browser)
      @browser = browser
    end

    def is_displayed?
     banner_text = browser.find_element(:class, 'pageBanner').text
     banner_text.include?('Computers').should == true
    end
  
  
  end
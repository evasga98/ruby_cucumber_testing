class CategoryPage

    attr_reader :browser
    
    def initialize(browser)
      @browser = browser
    end

    def is_displayed?(category)
      browser.title.include?(category) == true
    end
  
  end
require 'selenium-webdriver'
Before do |scenario|
  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.timeouts.implicit_wait = 10

  @browser.navigate.to 'https://www.amazon.com/?language=en_US'
  @browser.manage.window.maximize
end
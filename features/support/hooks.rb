require 'selenium-webdriver'
Before do |scenario|
  @browser = Selenium::WebDriver.for :chrome
  @browser.manage.window.maximize
  @browser.navigate.to 'http://www.amazon.com'
end
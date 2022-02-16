require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome

driver.get 'https://selenium.dev'
driver.quit

# Open browser CHROME
options = Selenium::WebDriver::Options.chrome
driver = Selenium::WebDriver.for :chrome, options: options

driver.quit

# Open browser INTERNET EXPLORER
options = Selenium::WebDriver::Options.ie
driver = Selenium::WebDriver.for :ie, options: options

driver.quit

# Open browser EDGE
options = Selenium::WebDriver::Options.edge
driver = Selenium::WebDriver.for :edge, options: options

driver.quit

# Open browser FIREFOX
options = Selenium::WebDriver::Options.firefox
driver = Selenium::WebDriver.for :firefox, options: options

driver.quit

# Open browser OPERA
options = Selenium::WebDriver::Options.chrome
options.binary = '/path/to/opera/browser'
driver = Selenium::WebDriver.for :chrome, options: options

driver.quit

# Open browser SAFARI
safaridriver --enable

options = Selenium::WebDriver::Options.safari
driver = Selenium::WebDriver.for :safari, options: options

driver.quit
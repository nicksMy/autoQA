require "rubygems"
require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome

driver.get 'https://google.com'

driver.title # => 'Google'

driver.manage.timeouts.implicit_wait = 500

search_box = driver.find_element(name: 'q')
search_button = driver.find_element(name: 'btnK')

search_box.send_keys 'Seleniumm'
search_button.click

=begin

end
if driver.find_element(name: 'q').attribute('value') == 'Selenium'
    puts "Page title is: #{driver.title}"
    puts "Test Pass"
else
    puts "Page title is: #{driver.title}"
    puts "Test Error"
end

=end

research_box = driver.find_element(name: 'q').clear()
research_button = driver.find_element(class: 'z1asCe MZy1Rb')

research_box.send_keys 'Selenium'
research_button.click
driver.navigate.refresh

sleep 10

driver.quit
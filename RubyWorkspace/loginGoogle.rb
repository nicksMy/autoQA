require "rubygems"
require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome

driver.get 'https://accounts.google.com/signin/v2/identifier?hl=pt-BR&passive=true&continue=https%3A%2F%2Fwww.google.com.br%2F&ec=GAZAmgQ&flowName=GlifWebSignIn&flowEntry=ServiceLogin'

login_box = driver.find_element(name: 'identifier')
login_button = driver.find_element(class: 'VfPpkd-vQzf8d')

login_box.send_keys 'giovani.silqueira@cd2.com.br'
login_button.click

sleep 10

password_box = driver.find_element(name: 'password') 
login_button = driver.find_element(class: 'VfPpkd-vQzf8d')

password_box.send_keys '*2j>2mFS'
login_button.click

sleep 10

number_box = driver.find_element(class: 'VfPpkd-fmcmS-wGMbrd')
number_button = driver.find_element(class: 'VfPpkd-RLmnJb')

number_box.send_keys '48 999077181'
number_button.click

sleep 5

confirm_button = driver.find_element(id: 'yDmH0d')

confirm_button.click

sleep 5

driver.quit
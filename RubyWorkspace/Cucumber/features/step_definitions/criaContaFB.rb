Selenium::WebDriver::Chrome.driver_path = '/usr/local/bin/chromedriver'

Dado('o site do Facebook') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get "https://www.facebook.com"
end                                                                                                                                                                                                                                                     

Quando('apresentar o campo Criar Nova conta') do
    sleep 1
    @driver.find_element(:xpath, "/html/body/div[1]/div[2]/div[1]/div/div/div/div[2]/div/div[1]/form/div[5]/a").click
end         

Quando('Preencher os campos e acionar o comando Criar') do
    sleep 2                                                              
    @driver.find_element(:xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[1]/div[1]/div[1]/div/input").click
    #@driver.find_element(:xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[1]/div[1]/div[1]/div/input").clear
    @driver.find_element(:xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[1]/div[1]/div[1]/div/input").send_keys "Rafael"
    sleep 1
    @driver.find_element(:xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[1]/div[1]/div[2]/div/div[1]/input").click
    #@driver.find_element(:xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[1]/div[1]/div[2]/div/div[1]/input").clear
    @driver.find_element(:xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[1]/div[1]/div[2]/div/div[1]/input").send_keys "Roludow"
    sleep 1
    @driver.find_element(:xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[2]/div/div[1]/input").click
    #@driver.find_element(:xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[2]/div/div[1]/input").clear
    @driver.find_element(:xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[2]/div/div[1]/input").send_keys "raf.roludow@gmail.com"
    sleep 1
    @driver.find_element(:xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[3]/div/div/div[1]/input").click
    #@driver.find_element(:xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[3]/div/div/div[1]/input").clear
    @driver.find_element(:xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[3]/div/div/div[1]/input").send_keys "raf.roludow@gmail.com"
    sleep 1
    @driver.find_element(:id, "password_step_input").click
    @driver.find_element(:id, "password_step_input").clear
    @driver.find_element(:id, "password_step_input").send_keys "w4tT3@%"
    sleep 1
    @driver.find_element(:id, "day").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "day")).select_by(:text, "3")
    @driver.find_element(:id, "day").click
    sleep 1
    @driver.find_element(:id, "month").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "month")).select_by(:text, "Mar")
    @driver.find_element(:id, "month").click
    sleep 1
    @driver.find_element(:id, "year").click
    Selenium::WebDriver::Support::Select.new(@driver.find_element(:id, "year")).select_by(:text, "2003")
    @driver.find_element(:id, "year").click
    sleep 1
    @driver.find_element(:xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[7]/span/span[2]/label").click
    sleep 1
    @driver.find_element(:xpath, "/html/body/div[3]/div[2]/div/div/div[2]/div/div/div[1]/form/div[1]/div[10]/button").click
end

Então('o Facebook irá exibir a tela inicial') do                                                                              
    pending # Write code here that turns the phrase above into concrete actions
end 
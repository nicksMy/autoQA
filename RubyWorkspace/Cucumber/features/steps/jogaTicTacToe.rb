Selenium::WebDriver::Chrome.driver_path = '/home/nicksmy/ChromeDriver/chromedriver'

debug = Selenium::WebDriver::Wait.new(:timeout => 60)
wait = Selenium::WebDriver::Wait.new(:timeout => 2)

Dado('o site do Google') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get 'https://www.google.com'
end

Quando('exibir o campo de pesquisa') do
    # verificar a exibição do campo
    sleep 2
    @driver.find_element(:name, "q").displayed?
end

Quando('preencher o campo') do
    # escrever a pesquisa no campo
    sleep 2
    @driver.find_element(:name, "q").click
    @driver.find_element(:name, "q").send_keys "tic tac toe\n"
end

Quando('mostrar o resultado e ganhar do robozinho') do
	sleep(5.minutes)
    # começar a jogar contra o google
    #jsname="WfZakb"
    @driver.find_element(:xpath, "/html/body/div[7]/div/div[10]/div[1]/div[2]/div[2]/div/div/div[1]/block-component/div/div[1]/div/div/div/div[1]/div/div/div/div/div[2]/table/tbody/tr[1]/td[1]").click
end

Então('sair do navegador') do
    sleep 5
    @driver.quit
end
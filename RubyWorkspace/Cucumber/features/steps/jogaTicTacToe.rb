Selenium::WebDriver::Chrome.driver_path = 'C:/chromedriver.exe'

Dado('o site do Google') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get 'https://www.google.com'
end

Quando('exibir o campo de pesquisa') do
    # verificar a exibição do campo
    @driver.find_element(:xpath, "/html/body/ntp-app//div/ntp-realbox//div/input").displayed?
end

Quando('preencher o campo e acionar o comando pesquisar') do
    # escrever a pesquisa no campo
    sleep 2
    @driver.find_element(:id, "input").click
    @driver.find_element(:id, "input").send_keys 'tic tac toe'

    # acionar o botão de pesquisa
    sleep 1
    @driver.find_element(:id, "icon").click
end

Quando('mostrar o resultado e ganhar do robozinho') do
    # começar a jogar contra o google
end

Então('sair do navegador') do

end
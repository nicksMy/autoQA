Selenium::WebDriver::Chrome.driver_path = '/home/nicksmy/ChromeDriver/chromedriver'

Dado('o site Hippo') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get 'https://www.hippo.com.br'
end

Quando('apresentar o botão Criar uma conta, clique') do
    @driver.manage.window.maximize
    
    sleep(5)
    @driver.find_element(:xpath, "/html/body/app-root/app-navbar/nav[1]/div/div/div/div/div/div/a/span").displayed?
    @driver.find_element(:xpath, "/html/body/app-root/app-navbar/nav[1]/div/div/div/div/div/div/a/span").click
end

Quando('assim que exibir o alert para o CEP seguir com o preenchimento') do
    #sleep(5.minutes)
    sleep(5)

end

Quando('quando mudar de tela completar todos os campos pessoa física') do
end

Quando('acionar o comando de cadastro de conta') do
end

Quando('quando mostrar o popup com a validação, clique') do
end

Quando('voltar para a homepage do Hippo') do
end

Quando('entrar na tela "Você bem +" e visualizar as três opções de ofertas e descontos') do
end

Então('fechar o Browser') do
end
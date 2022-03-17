Selenium::WebDriver::Chrome.driver_path = '/home/nicksmy/ChromeDriver/chromedriver'

Dado('o site de Homol do Horus') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get "https://horus-next-hml.corp.assai.com.br"
    sleep(2)
end

Quando('apresentar o campo de Login, preencha e clique em Login') do
    sleep(2)
    @driver.find_element(:name, "username").click
    @driver.find_element(:name, "username").send_keys "DESENVOLVEDOR"

    @driver.find_element(:name, "password").click
    @driver.find_element(:name, "password").send_keys "123mudar"

    @driver.find_element(:id, "loginButton").click
end

Quando('mostrar a homepage, entrar no menu de Televendas > Manutenção > Pré-Pedido') do
    @driver.manage.window.maximize

    sleep(5)
    @driver.find_element(:link_text, "Televendas").click

    sleep(2)
    @driver.find_element(:link_text, "Manutenção").click

    sleep(2)
    @driver.find_element(:link_text, "Pré Pedido").click
end

Quando('trocar de tela, clicar em novo e entrar na aba de Itens do Pedido') do
    sleep(2)
    @driver.find_element(:xpath, "/html/body/app-root/main-component/horus-toolbar/div/div/div[2]/button[1]/span[2]").click

    sleep(2)
    @driver.find_element(:link_text, "Itens do Pedido").click
end

Quando('entrar na aba, clicar em pesquisar e preencher com algum produto') do
    sleep(2)
    @driver.find_element(:xpath, "/html/body/app-root/main-component/div/div[2]/ng-component/p-tabview/div/div/p-tabpanel[3]/div/itens-pre-pedido/div/div/p-table/div/div[1]/div/button[2]/span[2]").click

    @driver.find_element(:xpath, "/html/body/app-root/main-component/div/div[2]/ng-component/p-tabview/div/div/p-tabpanel[3]/div/itens-pre-pedido/div/div/div/div/div[1]/div[2]/h-field/div[2]/span/h-field/div[2]/span/input").click
    @driver.find_element(:xpath, "/html/body/app-root/main-component/div/div[2]/ng-component/p-tabview/div/div/p-tabpanel[3]/div/itens-pre-pedido/div/div/div/div/div[1]/div[2]/h-field/div[2]/span/h-field/div[2]/span/input").send_keys "6824"
    @driver.find_element(:xpath, "/html/body/app-root/main-component/div/div[2]/ng-component/p-tabview/div/div/p-tabpanel[3]/div/itens-pre-pedido/div/div/div/div/div[1]/div[2]/h-field/div[2]/span/button/span[2]").click
end

Quando('retornar os dados do pedido, escolher um e jogar para a coluna da direita') do
    sleep(2)
    @driver.find_element(:xpath, "/html/body/app-root/main-component/div/div[2]/ng-component/p-tabview/div/div/p-tabpanel[3]/div/itens-pre-pedido/div/div/div/div/div[3]/div[1]/p-table/div/div/table/tbody/tr[1]/td[1]/p-tablecheckbox/div/div[2]").click

    @driver.find_element(:xpath, "/html/body/app-root/main-component/div/div[2]/ng-component/p-tabview/div/div/p-tabpanel[3]/div/itens-pre-pedido/div/div/div/div/div[3]/div[2]/span/button[2]").click

    @driver.find_element(:xpath, "/html/body/app-root/main-component/div/div[2]/ng-component/p-tabview/div/div/p-tabpanel[3]/div/itens-pre-pedido/div/div/div/div/div[3]/div[3]/p-table/div/div/table/tbody/tr/td[1]/p-tablecheckbox/div/div[2]").click

    @driver.find_element(:xpath, "/html/body/app-root/main-component/div/div[2]/ng-component/p-tabview/div/div/p-tabpanel[3]/div/itens-pre-pedido/div/div/h5/div/button[2]/span").click
end

Quando('voltar para a tela de Itens do Pedido, validar os campos Preço Negociado') do
    sleep(2)

    #@driver.find_element(:xpath, "/html/body/app-root/main-component/div/div[2]/ng-component/p-tabview/div/div/p-tabpanel[3]/div/itens-pre-pedido/div/div/p-table/div/div[2]/table/tbody/tr/td[9]/inputbutton/div/input").enabled?
    @driver.find_element(:xpath, "/html/body/app-root/main-component/div/div[2]/ng-component/p-tabview/div/div/p-tabpanel[3]/div/itens-pre-pedido/div/div/p-table/div/div[2]/table/tbody/tr/td[9]/inputbutton/div/input").click
    @driver.find_element(:xpath, "/html/body/app-root/main-component/div/div[2]/ng-component/p-tabview/div/div/p-tabpanel[3]/div/itens-pre-pedido/div/div/p-table/div/div[2]/table/tbody/tr/td[9]/inputbutton/div/input").send_keys 111

    string validaCampo
    @driver.find_element(:xpath, "/html/body/app-root/main-component/div/div[2]/ng-component/p-tabview/div/div/p-tabpanel[3]/div/itens-pre-pedido/div/div/p-table/div/div[2]/table/tbody/tr/td[9]/inputbutton/div/input").attribute("ng-reflect-model") = validaCampo

    if (validaCampo == 1.11)
        @driver.quit
    end
    
    #if (@driver.find_element(:xpath, "/html/body/app-root/main-component/div/div[2]/ng-component/p-tabview/div/div/p-tabpanel[3]/div/itens-pre-pedido/div/div/p-table/div/div[2]/table/tbody/tr/td[9]/inputbutton/div/input").attribute("ng-reflect-model"))
    #    @driver.quit
    #end
    sleep(20)
end

Então('voltar para a Homepage') do
    @driver.get "https://horus-next-hml.corp.assai.com.br"
    sleep(20)
end
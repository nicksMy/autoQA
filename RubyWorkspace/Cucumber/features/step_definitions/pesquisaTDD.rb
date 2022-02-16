Selenium::WebDriver::Chrome.driver_path = '/usr/local/bin/chromedriver'

Dado('o site Youtube') do
    @driver = Selenium::WebDriver.for :chrome
    @driver.get "https://www.youtube.com"
end

Quando('apresentar o campo de busca') do
    # verifica se está mostrando o campo de pesquisa
    sleep 2
    @driver.find_element(:id, "search-input").displayed?
end

Quando('preencher o campo e acionar o comando pesquisar') do
    # click e pesquisa no campo
    sleep 2                
    @driver.find_element(:name, "search_query").click
    @driver.find_element(:name, "search_query").send_keys "TDD"

    # click no botão pesquisar
    sleep 2
    @driver.find_element(:id, "search-icon-legacy").click
end

Quando('encontrar o vídeo e deixar o like no mesmo') do
    # valida se encontrou o vídeo desejado
    sleep 2
    @driver.find_element(:link_text, "TDD (Test Driven Development) // Dicionário do Programador").displayed?
    @driver.find_element(:link_text, "TDD (Test Driven Development) // Dicionário do Programador").click

    # click no botão de like
    sleep 2
    @driver.find_element(:xpath, "/html/body/ytd-app/div/ytd-page-manager/ytd-watch-flexy/div[5]/div[1]/div/div[8]/div[2]/ytd-video-primary-info-renderer/div/div/div[3]/div/ytd-menu-renderer/div/ytd-toggle-button-renderer[1]/a/yt-icon-button/button").click
end

Então('será retornado para tela principal do google') do
    # entra na página google
    sleep 5
    @driver.get "https://www.google.com"
    @driver.quit
end
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

Quando('preencher o campo e entrar no site') do
    # escrever a pesquisa no campo
    sleep 2
    @driver.find_element(:name, "q").click
    @driver.find_element(:name, "q").send_keys "playtictactoe\n"

    sleep 1
    @driver.find_element(:partial_link_text, "Tic-Tac-Toe").click
end

Quando('mostrar o resultado ganhar do robozinho') do
	sleep(5.minutes)
    # começar o jogo
    
    if @driver.find_element(:class, "square top left").displayed?
        puts "está localizando"
    end

    #squareTopLeft = @driver.find_element(:class, "square top left")

    #x_offset = squareTopLeft.rect.x
    #y_offset = squareTopLeft.rect.y

    #@driver.action.move_to_location(x_offset, y_offset).perform
    #@driver.action.context_click(squareTopLeft).perform

    #squareTopLeft = @driver.find_element(:class, "square top left")
    #@driver.action.move_to(squareTopLeft).perform
end

Então('sair do navegador') do
    sleep 5
    @driver.quit
end
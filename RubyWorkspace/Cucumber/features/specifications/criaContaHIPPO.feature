Funcionalidade: Acessar os descontos da conta Hippo
    Eu quero entrar/registrar uma conta
    A fim de visualizar os descontos

@hippoConta01
Cenário: Criando conta no Hippo
    Dado o site do Hippo
    Quando apresentar o botão Criar uma conta clique
    E assim que exibir o alert para o CEP seguir com o preenchimento
    E quando mudar de tela completar todos os campos pessoa física
    E acionar o comando de cadastro de conta
    E quando mostrar o popup com a validação clicar
    E voltar para a home page do Hippo
    E entrar na tela Você bem + e visualizar as três opções de ofertas/descontos
    Então fechar o Browser

@hippoConta02
Cenário: Acessando conta antiga e com compras
    Dado o site do Hippo
    Quando apresentar o botão Entrar clique
    E assim que exibir o alert para o Login seguir com o preenchimento e clique
    E quando mostrar o popup com a validação clicar
    E voltar para a home page do Hippo
    E entrar na tela Você bem + e visualizar as três opções de ofertas/descontos
    Então fechar o Browser

@hippoConta03
Cenário: Acessando conta nova com nenhuma compra
    Dado o site do Hippo
    Quando apresentar o botão Entrar clique
    E assim que exibir o alert para o Login seguir com o preenchimento e clique
    E quando mostrar o popup com a validação clicar
    E voltar para a home page do Hippo
    E entrar na tela Você bem + e visualizar as três opções de ofertas/descontos
    Então fechar o Browser
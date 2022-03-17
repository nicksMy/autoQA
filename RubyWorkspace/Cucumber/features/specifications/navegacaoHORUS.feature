#language: pt
Funcionalidade: Acessar o Horus
    Eu quero efetuar Login
    A fim de efetuar testes

@assaiHorusPRECOPermanente
Cenário: Entrando na conta Horus
    Dado o site de Homol do Horus
    Quando apresentar o campo de Login, preencha e clique em Login
    E mostrar a homepage, entrar no menu de Televendas > Manutenção > Pré-Pedido
    E trocar de tela, clicar em novo e entrar na aba de Itens do Pedido
    E entrar na aba, clicar em pesquisar e preencher com algum produto
    E retornar os dados do pedido, escolher um e jogar para a coluna da direita
    E voltar para a tela de Itens do Pedido, validar os campos Preço Negociado
    Então voltar para a Homepage
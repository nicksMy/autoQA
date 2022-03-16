#language: pt
Funcionalidade: Acessar o Horus
    Eu quero efetuar Login
    A fim de efetuar testes

@assaiHorus01
Cenário: Entrando na conta Horus
    Dado o site de Homol do Horus
    Quando apresentar o campo de Login, preencha e clique em Login
    E assim que mostrar a homepage, entrar no menu de Televendas > Manutenção > Pré-pedido
    E clicar em Novo, entrando na aba de Itens do Pedido
    E clicar em Pesquisar, preencher com algum produto
    E assim que retornar os dados do pedido, escolher um e jogar para a coluna da direita clicando em adicionar
    E quando voltar para a tela de Itens do Pedido, validar se os campos estão devidamentes liberados
    Então voltar para a Homepage
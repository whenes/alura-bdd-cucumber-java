# language: pt

  @leilao
  Funcionalidade: Cadastrando um leilao

    Contexto:
      Dado o usuario logado

    Cenario: Um usuario logado pode cadastrar um leilao
      Quando acessa a pagina de novo leilao
      E preenche o formulario com dados validos
      Entao volta para a pagina de leiloes
      E o novo leilao aparece na tabela
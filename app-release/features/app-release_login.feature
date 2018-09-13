# language: pt

Funcionalidade: Login App EC
    Como usuário, desejo realizar a validação de Login no app

  Contexto:  Estar na tela de Login do App Mobile
    Dado que estiver na tela de Login do App Mobile

    @loginbranco
    Cenário: Login inválido sem CNPJ ou Senha   
      Quando não preencher os campos de CNPJ e/ou senha
        E clicar no botão Entrar
      Então a mensagem: Você precisa preencher CNPJ e Senha, será exibida
    
    @logininvalido
    Cenário: Login inválido com CNPJ ou Senha incorretos
      Quando preencher os campos de CNPJ e/ou senha inválidos
        E clicar no botão Entrar
      Então a mensagem: CNPJ ou senha incorretos, será exibida

    @loginvalido
    Cenário: Login com CNPJ e Senha válidos (Primeiro acesso)
      Quando preencher os campos de CNPJ e/ou senha válidos
        E aceitar os termos de entrada
      Então o usuário estará logado no app e verá o item Carteira

  
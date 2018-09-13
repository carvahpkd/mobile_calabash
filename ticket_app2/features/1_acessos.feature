#language: pt

    Funcionalidade: Validação de Acesso
        Eu como usuário desejo realizar a navegação e 
        Consulta no aplicativo

@valida
        Cenário: Login Inválido
            Dado que eu esteja na home incial do aplicativo
            Quando tentar logar com dados não cadastrados
            Então o aplicativo exibe mensagem de dados inválidos

@loginuser
        Cenário: Login Válido
            Dado que eu esteja na home incial do aplicativo
            Quando realizar login com dados válidos
            Então é exibido a home do aplicativo

@cadastro
        Cenário: Cadastro de Usuário
            Dado que eu esteja na home incial do aplicativo
            E clico para relizar um novo cadastro
            Quando preencher os campos e cadastrar 
            Então caio logado na home inicial

# @loginface
#         Cenário: Login com Facebook
#             Dado que eu esteja na home incial do aplicativo
#             E clicar no botão para logar com Facebook
#             Quando informar o acesso com minha conta
#             Então o sistema exibe a home inicial
#language: pt
@funcionalidade_basica
Funcionalidade: Manter carros
  Eu como usuário quero manter meus carros para ter registro dos mesmos

  Cenário: Cadastrar carro
    Dado que estou na home da aplicação
    E clico em cadastro
    E preencho todos os campos de cadastro de carro
    Quando clico em cadastrar
    Então o carro é salvo e é exibido na lista

  Cenário: Editar carro
    Dado que estou na home da aplicação
    E cadastro um novo carro
    Quando consultar o carro cadastrado
    E editar os dados
    Então o carro é salvo e é exibido na listax
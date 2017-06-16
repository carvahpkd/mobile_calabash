# language: pt
# encoding UTF-8

Funcionalidade: Teste Login Facebook
  Cenário: Validação de campos

	  Dado que estou na tela do Facebook
	  Quando eu preencher os campos de login e senha com dados invalidos
	  E clicar no botão Entrar
	  Entao a mensagem de Senha Incorreta  
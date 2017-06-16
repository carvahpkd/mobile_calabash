# language: pt
# encoding UTF-8

Funcionalidade: Calculo de triângulo

  Cenário: Calculando um triângulo equilátero
	  Dado que estou na tela do TrianguloApp
	  Quando eu preencher o campo Lado 1 com "3"
	     E eu preencher o campo Lado 2 com "3"
	     E eu preencher o campo Lado 3 com "3"
	     E eu clicar em Calcular
	  Entao a mensagem "O triângulo é Equilátero" sera exibida  


  Cenário: Calculando um triângulo isósceles
	  Dado que estou na tela do TrianguloApp
	  Quando eu preencher o campo Lado 1 com "3"
	     E eu preencher o campo Lado 2 com "3"
	     E eu preencher o campo Lado 3 com "6"
	     E eu clicar em Calcular
	  Entao a mensagem "O triângulo é Isósceles" sera exibida 	  


  Cenário: Calculando um triângulo escaleno
	  Dado que estou na tela do TrianguloApp
	  Quando eu preencher o campo Lado 1 com "3"
	     E eu preencher o campo Lado 2 com "3"
	     E eu preencher o campo Lado 3 com "6"
	     E eu clicar em Calcular
	  Entao a mensagem "O triângulo é Escaleno" sera exibida 


  Cenário: Validando o não preenchimento de campos
	  Dado que estou na tela do TrianguloApp
	  Quando deixar de preencher algum campo
	     E eu clicar em Calcular
	  Entao a mensagem "Preencha todos os campos" sera exibida  
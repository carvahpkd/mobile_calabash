Dado(/^que estou na tela do Facebook$/) do
  element_exists("* id:'login_header_layout'")
end

Quando(/^eu preencher os campos de login e senha com dados invalidos$/) do
  enter_text "* id:'login_username'", "usuario@teste.com"
  enter_text "* id:'login_password'", "123456"
end

Quando(/^clicar no botão Entrar$/) do
  touch("* id:'login_login'")
end

Entao(/^a mensagem de Senha Incorreta$/) do
  element_exists("* text:'Senha Incorreta'")
end
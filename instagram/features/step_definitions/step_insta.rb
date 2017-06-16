Dado(/^que eu esteja na tela inicial do Aplicativo$/) do
  element_exists("* id:'logo'")
end

Quando(/^eu clicar no link de Cadastro$/) do
  touch("* id:'sign_up_with_email_or_phone'")
end

Quando(/^clicar no campo de email$/) do
  touch("* text:'Email'")
end

Quando(/^eu preencho o campo de email$/) do
  enter_text "* id:'email_field'", "teste@teste.com.br"
end

Então(/^eu clico no botão Avançar$/) do
  touch("* id:'next_button'")
end
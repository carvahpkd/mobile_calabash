Dado(/^que estou na tela do Instagram$/) do
  element_exists("* id:'logo'")
end

Quando(/^eu clicar em Cadastre\-se com email ou numero de telefone$/) do
  touch("* id:'sign_up_with_email_or_phone'")
end

Quando(/^clicar na opção Email$/) do
  touch("* text:'Email'")
end

Quando(/^preencher o campo Email$/) do
  enter_text "* id:'email_field'", "teste@teste.com.br"
end

Entao(/^eu clico no botão Avançar$/) do
  touch("* id:'next_button'")
end
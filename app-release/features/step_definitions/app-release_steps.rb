Dado(/^que estiver na tela de Login do App Mobile$/) do
  element_exists("* text:'CNPJ'")
end

# tc01
Quando(/^não preencher os campos de CNPJ e\/ou senha$/) do
  enter_text "* id:'NoResourceEntry-20'", ""
  enter_text "* id:'NoResourceEntry-24'", ""
end

Quando(/^clicar no botão Entrar$/) do
  touch("* text:'Entrar'")
  sleep(2)
end

Então(/^a mensagem: Você precisa preencher CNPJ e Senha, será exibida$/) do
  element_exists("* text:'Você precisa preencher CNPJ e Senha'")
end

#TC02
Quando(/^preencher os campos de CNPJ e\/ou senha inválidos$/) do
  enter_text "* id:'NoResourceEntry-20'", "21951838000130"
  enter_text "* id:'NoResourceEntry-24'", "000"
end

Então(/^a mensagem: CNPJ ou senha incorretos, será exibida$/) do
  element_exists("* text:'CNPJ ou senha incorretos'")
  clear_text("android.widget.EditText id:'NoResourceEntry-20'")
  clear_text("android.widget.EditText id:'NoResourceEntry-24'")
  sleep(5) 
end

#TC03
Quando(/^preencher os campos de CNPJ e\/ou senha válidos$/) do
  enter_text "* id:'NoResourceEntry-20'", "21951838000130"
  enter_text "* id:'NoResourceEntry-24'", "ticket@123"
  touch("* text:'Entrar'")
  sleep(3)
end

Quando(/^aceitar os termos de entrada$/) do
  perform_action('drag', 75, 25, 50, 50, 5)
  perform_action('drag', 75, 25, 50, 50, 5)
  perform_action('drag', 75, 25, 50, 50, 5)
  perform_action('drag', 75, 25, 50, 50, 5)
  touch("* text:'Vamos lá'")
end

Então(/^o usuário estará logado no app e verá o item Carteira$/) do
  element_exists("* text:'Próximos períodos a receber'")
  sleep(15)
end




# # #ANTECIPACAO
# #  inserir aqui os steps para executar a automação de antecipação

# def swipe_page_to_left performAction('swipe', 'left') end

# def swipe_page_to_right performAction('swipe', 'right') end

# def scroll_to_right performAction('drag', 90, 0, 50, 50, 50) end

# def scroll_to_left performAction('drag', 0, 90, 50, 50, 50) end

# def scroll_to_up performAction('drag', 88, 80, 90, 90, 5) end

# def scroll_to_down performAction('drag', 70, 10, 80, 0, 3) end






#modelo de teste apenas para consulta (de como não fazer :P)
# #TC01
# Dado(/^que estiver na tela de Login do App Mobile$/) do
#   element_exists("* text:'Senha (a mesma que você usa no site)'")
# end

# Quando(/^não preencher os campos de CNPJ e\/ou senha$/) do
#   enter_text "* id:'NoResourceEntry-20'", ""
#   enter_text "* id:'NoResourceEntry-24'", ""
# end

# Quando(/^clicar no botão Entrar$/) do
#   touch("* id:'NoResourceEntry-37'")
#   sleep(5)
# end

# Então(/^a mensagem: Você precisa preencher CNPJ e Senha, será exibida$/) do
#   element_exists("* text:'Você precisa preencher CNPJ e Senha'")
#   sleep(3)
# end

# #TC02
# Quando(/^preencher os campos de CNPJ e\/ou senha inválidos$/) do
#   enter_text "* id:'NoResourceEntry-20'", "00000000000000"
#   enter_text "* id:'NoResourceEntry-24'", "abc"
#   hide_soft_keyboard
# end

# Então(/^a mensagem: CNPJ ou senha incorretos, será exibida$/) do
#    element_exists("* text:'CNPJ ou senha incorretos'")
#    sleep(3)
# end

# #TC03
# Quando(/^preencher os campos de CNPJ e\/ou senha válidos$/) do
#    enter_text "* id:'NoResourceEntry-20'", "21951838000130"
#    enter_text "* id:'NoResourceEntry-24'", "ticket@123"
#    touch("* id:'NoResourceEntry-37'")
#    sleep(5)
# end

# Quando(/^aceitar os termos de entrada$/) do
#   perform_action('drag', 75, 25, 50, 50, 5)
#   perform_action('drag', 75, 25, 50, 50, 5)
#   perform_action('drag', 75, 25, 50, 50, 5)
#   perform_action('drag', 75, 25, 50, 50, 5)
#   touch("* id:'NoResourceEntry-89'")
# end

# Então(/^o usuário estará logado no app e verá o item Carteira$/) do
#   element_exists("* text:'Próximos períodos a receber'")
#   sleep(15)
# end


 
## LOGIN INVALIDO
Dado(/^que eu esteja na home incial do aplicativo$/) do
    element_exists("* id:'imagem_ticket'")
end

Quando(/^tentar logar com dados não cadastrados$/) do
    enter_text "* id:'login'", "teste.teste@email.com"
    enter_text "* id:'password'", "teste@123"
    hide_soft_keyboard
    touch("* id:'button_fazer_login'")
end

Então(/^o aplicativo exibe mensagem de dados inválidos$/) do
    element_exists("* text:'Usuário ou senha inválidos. Tente novamente'")
end

## LOGIN DADOS VALIDOS
Quando(/^realizar login com dados válidos$/) do
    enter_text "* id:'login'", "email.teste@mailnator.com"
    enter_text "* id:'password'", "senha@123"
    hide_soft_keyboard
    touch("* id:'button_fazer_login'")
    sleep 03
end

Então(/^é exibido a home do aplicativo$/) do
    # touch("* text:'Continuar'")
    # touch("* text:'Continuar'")
    # perform_action('drag', 75, 25, 50, 50, 5)
    # touch("* text:'Continuar'")
    element_exists("* id:'label_primeiro_cartao'")
    touch("* contentDescription:'Abrir menu lateral'")
    scroll("scrollView", :down)

    pan("* contentDescription:'Abrir menu lateral'", 'down')
    pan("* id:'swipe_container'", :down)
    pan("* text:'Termos e Condições'", :down)


    flash("* text:'Termos e Condições'")


end

## CADASTRAR NOVO USUARIO
Dado(/^clico para relizar um novo cadastro$/) do
    touch("* id:'button_cadastre'")
end

Quando(/^preencher os campos e cadastrar$/) do
    enter_text "* id:'text_cadastro_nome'",    "Usuario Teste"
    enter_text "* id:'text_cadastro_cpf'",     "65057693310"
    enter_text "* id:'text_cadastro_celular'", "11988551214"
    scroll("scrollView", :down)
    enter_text "* id:'text_cadastro_email'",   "teste.user@mailinator.com"
    hide_soft_keyboard
    enter_text "* id:'text_cadastro_senha'",   "senha@123"
    hide_soft_keyboard
    touch("* id:'button_proximo'")
    touch("* text:'Continuar'")
    touch("* text:'Continuar'")
    perform_action('drag', 75, 25, 50, 50, 5)
    touch("* text:'Continuar'")
end

Então(/^caio logado na home inicial$/) do
    element_exists("* id:'label_primeiro_cartao'")
    touch("* contentDescription:'Abrir menu lateral'")
    touch("* text:'Sair'")
    wait_for_element_exists("* id:'imagem_ticket'", timeout: 20)
end








## LOGAR COM FACEBOOK
# Dado(/^clicar no botão para logar com Facebook$/) do
#     touch("* id:'button_fb_auth'")
#     wait_for_element_exists("text:'facebook'", timeout: 60)
# end
# Quando(/^informar o acesso com minha conta$/) do
# end
# Então(/^o sistema exibe a home inicial$/) do
# end




#performAction('scroll_down')
#perform_action('swipe', 'right')
Dado("cadastro um novo carro") do
    @home_screen_object = $ENV::HomeScreenElement.new($driver) 
    @home_screen_object.click_botao_cadastro

    @cadastro_screen_object = $ENV::CadastroCarroScreenElement.new($driver) 
    time = Time.new
    @modelo = time.inspect

    $cadastro_util.preencheDadosCadastroCarro(@cadastro_screen_object, @modelo)
    $cadastro_util.salvarCarro(@cadastro_screen_object)
end

Quando("consultar o carro cadastrado") do
    @home_screen_object.click_botao_consulta
    
    sleep 2
    ultimo = ''

    while ultimo != @modelo
        
        Appium::TouchAction.new.press({x: 305, y: 1112}).move_to({x: -3, y: -890}).release.perform

        carro = $driver.find_elements(:id, 'modelo').last
        ultimo = carro.text
    end

    carro.click
end

Quando("editar os dados") do
    @cadastro_screen_object = $ENV::CadastroCarroScreenElement.new($driver) 
    
    @cadastro_screen_object.preenche_modelo_marca('xxxxx')
    @modelo = 'xxxxx'
    
    $action.keyEvent(4)
    
    $action.clickOnButton('alterar')
    sleep 2

    $action.keyEvent(4)
end

Então("o carro é salvo e é exibido na listax") do
    $cadastro_util.buscaUltimoRegistroCadastrado(@modelo)
end
Dado("que estou na home da aplicação") do
    @home_screen_object = $ENV::HomeScreenElement.new($driver) 
end

Dado("clico em cadastro") do
    @home_screen_object.click_botao_cadastro
end

Dado("preencho todos os campos de cadastro de carro") do

    time = Time.new
    @modelo = time.inspect

    # ano = '2018'
    # placa = 'abc-123'
    # km = '12345'
    # valor = '50000'

    @cadastro_screen_object = $ENV::CadastroCarroScreenElement.new($driver) 
    # @cadastro_screen_object.preenche_modelo_marca(@modelo)
    # @cadastro_screen_object.preenche_ano(ano)
    # @cadastro_screen_object.preenche_placa(placa)
    # @cadastro_screen_object.preenche_kilometragem(km)
    # @cadastro_screen_object.preenche_valor(valor)

    # $action.keyEvent(4)

    $cadastro_util.preencheDadosCadastroCarro(@cadastro_screen_object, @modelo)

end

Quando("clico em cadastrar") do
    $cadastro_util.salvarCarro(@cadastro_screen_object)
end

Então("o carro é salvo e é exibido na lista") do
    @home_screen_object.click_botao_consulta
    $cadastro_util.buscaUltimoRegistroCadastrado(@modelo)
end
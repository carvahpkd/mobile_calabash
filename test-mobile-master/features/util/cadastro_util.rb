class CadastroActions

  def buscaUltimoRegistroCadastrado(modelo)
    sleep 2
    ultimo = ''

    while ultimo != modelo
        
        Appium::TouchAction.new.press({x: 305, y: 1112}).move_to({x: -3, y: -890}).release.perform
        carro = $driver.find_elements(:id, 'modelo').last
        ultimo = carro.text

    end
    
  end

  def preencheDadosCadastroCarro(cadastro_screen_object, modelo)
    ano = '2018'
    placa = 'abc-123'
    km = '12345'
    valor = '50000'

    cadastro_screen_object.preenche_modelo_marca(modelo)
    cadastro_screen_object.preenche_ano(ano)
    cadastro_screen_object.preenche_placa(placa)
    cadastro_screen_object.preenche_kilometragem(km)
    cadastro_screen_object.preenche_valor(valor)

    $action.keyEvent(4)
  end

  def salvarCarro(cadastro_screen_object)
    cadastro_screen_object.click_botao_cadastrar
    sleep 2
    $action.keyEvent(4)
  end

end

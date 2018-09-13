require './features/page/cadastro_carro_page'
module Android

# PO da página de confimar localização do oficial de justiça  
  class CadastroCarroScreenElement < CadastroCarroScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      @driver = driver
      
      modelo_marca = @driver.id("modelo")
      ano = @driver.id("ano")
      placa = @driver.id("placa")
      kilometragem = @driver.id("km")
      valor = @driver.id("valor")
      botao_cadastrar = @driver.id("cadastrar")

      super(modelo_marca, ano, placa, kilometragem, valor, botao_cadastrar)
    end
    
    def error_message
      @driver.id('login_error')
    end
    
  end
end
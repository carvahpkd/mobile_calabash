require './features/page/home_page'
module Android
  class HomeScreenElement < HomeScreenPage
    
    attr_reader :driver
    
    def initialize(driver)
      @driver = driver

      botao_cadastro = @driver.id("cadastrar")
      botao_consulta = @driver.id("consulta")
      
      super(botao_cadastro, botao_consulta)
    end
    
    def error_message
      @driver.id('login_error')
    end
    
  end
end
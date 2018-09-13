# passos da página de confirmar endereço do oficial de justiça
class CadastroCarroScreenPage
  
  attr_accessor :modelo_marca, :ano, :placa, :kilometragem, :valor, :botao_cadastrar
  
  def initialize(modelo_marca, ano, placa, kilometragem, valor, botao_cadastrar)
    @modelo_marca = modelo_marca
    @ano = ano
    @placa = placa
    @kilometragem = kilometragem
    @valor = valor
    @botao_cadastrar = botao_cadastrar
  end

  def preenche_modelo_marca(modelo)
    @modelo_marca.clear
    @modelo_marca.send_key(modelo)
  end

  def preenche_ano(ano)
    @ano.send_key(ano)
  end  

  def preenche_placa(placa)
    @placa.send_key(placa)
  end 

  def preenche_kilometragem(kilometragem)
    @kilometragem.send_key(kilometragem)
  end 

  def preenche_valor(valor)
    @valor.send_key(valor)
  end 

  def click_botao_cadastrar
    @botao_cadastrar.click
  end

end
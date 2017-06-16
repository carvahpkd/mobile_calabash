Dado(/^que estou na tela do TrianguloApp$/) do
  element_exists("* text:'TrianguloApp'")
end

Quando(/^eu preencher o campo Lado 1 com "(.*?)"$/) do |lado1|
  enter_text "* id:'txtLado1'", "#{lado1}"
end

Quando(/^eu preencher o campo Lado 2 com "(.*?)"$/) do |lado2|
	enter_text "* id:'txtLado2'", "#{lado2}"
end

Quando(/^eu preencher o campo Lado 3 com "(.*?)"$/) do |lado3|
	enter_text "* id:'txtLado3'", "#{lado3}"
end

Quando(/^eu clicar em Calcular$/) do
  touch("* id:'btnCalcular'")
end

Entao(/^a mensagem "(.*?)" sera exibida$/) do |mensagem|
  element_exists("* text:'#{mensagem}'")
end

Quando(/^deixar de preencher algum campo$/) do
  # peenchendo apenas o lado1
  enter_text "* id:'txtLado1'", "9"
end
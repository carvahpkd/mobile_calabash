# Parte 2 - Criando Features e Steps e Executando

Dado que estamos com o ambiente montado e pronto para desenvolvimento, vamos precisar agora definir o local para iniciarmos. 
Geralmente eu coloco meus projetos dentro do C:/users/nomedapasta, mas fica a cargo de cada um.
Uma vez que temos nosso local para desenvolvimento, vamos precisar falar para o Calabash que vamos iniciar um projeto bem ali.
E para isso, vamos dar o seguinte comando:

calabash-android gen

Esse comando vai criar a estrutura básica proposta pelo próprio framwork da seguinte maneira:

features
features/my_first.feature
features/step_definitions
features/step_definitions/calabash_steps.rb
features/support
features/support/env.rb
features/support/app_installation_hooks.rb
features/support/app_life_cycle_hooks.rb
features/support/hooks.rb

Mas a forma de trabalho cada um tem a sua, portanto, fique a vontade para escolher a que melhor se adeque ao seu contexto.

O arquivo "my_first.feature" é só um exemplo, você mesmo pode criar suas features.

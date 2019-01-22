# calabash_android

Bem-vindo ao Calabash para Android

A Calabash é uma tecnologia de testes automatizada para aplicações nativas e híbridas para Android e iOS.

Calabash é um projeto livre de código aberto, desenvolvido e mantido pela Xamarin.

Calabash é totalmente gratuita, a Xamarin deixou de dar suporte ao mesmo, porém fornece uma série de serviços comerciais centrados em torno da Calabash e garantia de qualidade para celulares, ou seja, Xamarin Test Cloud, que consiste em ambientes de teste de execução hospedados que permitem executar testes Calabash em um grande número de dispositivos Android e iOS.

Consulte xamarin.com/test-cloud.

Se você tiver alguma dúvida sobre o Calabash-Android, use o grupo do Google http://groups.google.com/group/calabash-android

Documentação

A documentação é dividida nas seguintes seções:

Instalação
Ruby API
Wiki (que inclui informações sobre a construção de strings uiquery)
O Calabash Android requer ruby> = 2.0 (a versão estável mais recente é a preferida).

Ruby em MacOS

No MacOS, recomendamos usar um Ruby gerenciado como rbenv ou rvm. Se você está apenas começando ou não quiser se comprometer com um Ruby gerenciado, você deve instalar e usar o Calabash Sandbox.

# Instala o Sandbox Calabash
$ Curl -sSL https://raw.githubusercontent.com/calabash/install/master/install-osx.sh | Bash

Por favor, não instale gems com sudo

Para obter mais informações sobre o ruby no MacOS, consulte estas páginas Wiki:
Ruby em MacOS
Melhor prática: nunca instale gems com sudo
Atualizando para Calabash-android 0.5

O Calabash-android 0.5 introduziu novos recursos e removeu muitas ações. Se o projeto de teste depender de algumas das ações removidas, você terá que reimplementar as ações usando wrappers, consultas e gestos de ruby. 

Gere um esqueleto de Cucumber

Para começar com calabash pode ser uma boa idéia para executar calabash-android gen. Ele vai criar um esqueleto cucumber na pasta atual como este:

características

| _suporte

| | _app_installation_hooks.rb

| | _app_life_cycle_hooks.rb

| | _env.rb

| | _hooks.rb

| _step_definitions

| | _calabash_steps.rb

| _my_first.feature

Neste esqueleto você encontra todas as etapas predefinidas que vem com calabash. Tente dar uma olhada no my_first.feature e alterá-lo para se adequar ao seu aplicativo.

Escrevendo um teste

Os recursos do Cucumber vão na biblioteca de recursos e devem ter a extensão ".feature".

Você pode começar olhando os recursos / my_first.feature. Você pode estender esse recurso ou fazer o seu próprio usando algumas das etapas predefinidas que vem com Calabash.

Executando o teste

Para executar o teste:

Calabash-android run <apk>
O Calabash-android irá instalar uma instrumentação juntamente com o seu aplicativo ao executar o aplicativo. Chamamos essa instrumentação de "servidor de teste". O "servidor de teste" tem permissão especial que lhe permite interagir muito de perto com o seu aplicativo durante o teste. Toda vez que você testar um novo binário ou usar uma versão atualizada do calabash, um novo servidor de teste será construído. O servidor de teste é uma intrumentação que será executada juntamente com o aplicativo no dispositivo para executar o teste.

Local de captura de tela

As imagens são colocadas no diretório de trabalho atual por padrão. O local pode ser alterado definindo a variável de ambiente SCREENSHOT_PATH.

SCREENSHOT_PATH = / tmp / foo / calabash-android executar
Faria com que a primeira imagem apareça em /tmp/foo/screenshot_0.png.

Etapas predefinidas

As etapas predefinidas estão localizadas na pasta features / step_definitions. Uma lista compilada de etapas predefinidas com comentários está disponível aqui

Solução de problemas

Problemas ao iniciar os testes

Se o seu aplicativo falhar instantaneamente logo após ser iniciado, lembre-se de que ele precisa da permissão android.permission.INTERNET para que os testes de calabash sejam executados (Problema # 278). Adicione o seguinte xml ao seu AndroidManifest.xml se você não o tiver já:

<Uses-permission android: name = "android.permission.INTERNET" />
Problemas ao clicar nos botões e no texto

Se parecer que os botões / texto não estão sendo clicados corretamente, você precisa adicionar o seguinte xml ao seu AndroidManifest.xml:

<Uses-sdk android: targetSdkVersion = "SDK_VERSION" />
Onde SDK_VERSION é a versão do SDK do Android que você está usando. 

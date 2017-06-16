# Parte 1 - Montando o Ambiente

Bem, antes de mais nada, deve se avaliar em qual equipamento vc vai estar trabalhando , mas isso não é um problema para quem ta trabalhando com Mac, Windows ou Linux. 
O princípio vai ser o mesmo, mas, caso você seja um QA da velha escola, que tal aprender um outro Sistema Operacional??? 
Então pra deixar claro, usando o Windows vc vai ter um pouco mais de trabalho, principalmente no quesito montagem de ambiente. 
Mas depois que estiver configurado só usar.


Em meu ambiente de trabalho eu vou precisar ter instalado:

A. Java instalado:
   Mac: https://java.com/en/download/help/mac_install.xml;
   Win: https://java.com/en/download/;
   Linux: https://www.java.com/pt_BR/download/help/linux_x64_install.xml;
B. Java Development Kit (JDK): http://www.oracle.com/technetwork/pt/java/javase/downloads/index.html;
C. Android Studio: https://developer.android.com/studio/install.html;
D. Assim que instalar o Android, instalar os pacotes de SDK Platform dele;

Vamos precisar instalar o ruby e a gem do calabash-android:

Para instalar o ruby:

Windows:

Necessário: rubyinstaller (http://rubyinstaller.org/downloads/).

Obs.: Quando se instala o ruby, será necessário a instalação do DevKit correspondente da versão que você instalou.

Mac ou Linux:

Necessário: Baixar o Xcode pelo link: https://developer.apple.com/xcode/downloads/. 
Aprendi que sempre que instalar o SO, a primeira coisa será instalar o Xcode.

Depois do Xcode, vamos baixar o Homebrew via terminal com o comando:

ruby -e “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)” .

Ruby instalado, vamos instalar duas gems: bundler e calabash-android:

gem install bundler
gem install calabash-android

Depois de todo esse trampo (instlar Android Studio, SDKs, Java e JDK), agora temos que definir algumas variáveis de ambiente 
no nosso arquivo e bash_profile (MAC e Linux) ou nas variáveis de ambiente do Windows:

export ANDROID_HOME=/Users/usuario/Library/Android/sdk
export ANDROID_PLATAFORM_TOOLS=/Users/usuario/Library/Android/sdk/platform-tools
export ANDROID_TOOLS=/Users/usuario/Library/Android/sdk/tools
export ANDROID_ADB=/Users/usuario/Library/Android/sdk/platform-tools/adb

Qualquer outra variável que estiver lá NÃO mexa Ok.

Importante saber que definir as variáveis de ambiente é o principal da configuração do ambiente. Sem isso nada funciona, OK.

Reinicie a máquina. 

# Parte 1 - Montando o Ambiente

Bem, antes de mais nada, deve se avaliar em qual equipamento vc vai estar trabalhando , mas isso não é um problema para quem ta trabalhando com Mac, Windows ou Linux. 
O princípio vai ser o mesmo. Mas depois que estiver configurado só usar.


Em meu ambiente de trabalho eu vou precisar ter instalado:

A. Java instalado:
   1. Mac: https://java.com/en/download/help/mac_install.xml;
   2. Win: https://java.com/en/download/;
   3. Linux: https://www.java.com/pt_BR/download/help/linux_x64_install.xml;
   
B. Java Development Kit (JDK): 
   1. http://www.oracle.com/technetwork/pt/java/javase/downloads/index.html;

C. Android Studio: 
   1. https://developer.android.com/studio/install.html;

Vamos precisar instalar o ruby e a gem do calabash-android:

Para instalar o ruby:

Windows:

Necessário: rubyinstaller (http://rubyinstaller.org/downloads/).

Mac ou Linux:

Necessário: Baixar o Xcode pelo link: https://developer.apple.com/xcode/downloads/. 

Depois do Xcode, vamos baixar o Homebrew via terminal com o comando:

ruby -e “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)” .

Ruby instalado, vamos instalar duas gems: bundler e calabash-android:

gem install bundler
gem install calabash-android

Depois de todo esse trampo (instlar Android Studio, SDKs, Java e JDK), agora temos que definir algumas variáveis de ambiente 
no nosso arquivo e bash_profile (MAC e Linux) ou nas variáveis de ambiente do Windows:

Qualquer outra variável que estiver lá NÃO mexa Ok.

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
export ANDROID_HOME=/Users/thiagocarvalho/Library/Android/sdk
export PATH=$PATH:$JAVA_HOME/bin:$ANDROID_HOME/emulator:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools

Reinicie a máquina. 

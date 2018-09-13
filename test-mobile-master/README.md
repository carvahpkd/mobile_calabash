#Mobile Interface Test

Projeto para teste da empresa Inmetrics

## Installation
We need to install:
#### MAC (Android and iOS)
1. Downaload and install Appium - [Download here](http://appium.io/)
2. Download and install Ruby - [Download here](https://www.ruby-lang.org/en/documentation/installation/)
3. Download and configure Android SDK - [Download here](https://developer.android.com/studio/index.html)
4. Configure Android environment - [Download here](https://stackoverflow.com/questions/19986214/setting-android-home-enviromental-variable-on-mac-os-x)
5. Download Xcode - [Download here](https://developer.apple.com/download/)

#### Linux (Android)
1. Downaload and install Appium - [Download here](http://appium.io/)
2. Download and install Ruby - [Download here](https://www.ruby-lang.org/en/documentation/installation/)
3. Download and configure Android SDK - [Download here](https://developer.android.com/studio/index.html)
4. Configure Android environment - [Download here](https://stackoverflow.com/questions/26256279/how-to-set-android-home-path-in-ubuntu-please-provide-the-steps)


## Usage
#### Run Local
For run local tests, you need:
1. All steps above made
2. Access through terminal the project repository and run command: $ bundle install
3. Start Appium Server
4. Configure appium.txt with your device udid (interface_test_ojo/config/../../appium.txt) field: deviceName
4. Run cucumber PN=android OA=local (This is will run locally with Android)

Now your automated tests will be started and run in your device.

#### Dependencias
As dependencias do projeto estão no arquivo Gemfile.
Para instalar as dependias basta executar na pasta do projeto: $bundle install

Caso nao tenha o bundle, instalar antes: $sudo install bundler

## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## To Execute
1. git clone no projeto
2. executar $bundle install
3. conectar device no pc em modo desenvolvedor
4. run: $cucumber PN=android OA=local -p run

require 'appium_lib'
require 'cucumber'
require 'test/unit/assertions'

def load_appium_configuration(platform, origin)
  Appium.load_appium_txt :file => File.expand_path("./../../../config/#{platform}/#{origin}/appium.txt", __FILE__), verbose: true
end

def load_module(path)
  Dir[path].each { |file| require file }
end

# Create a custom World class so we don't pollute `Object` with Appium methods
class AppiumWorld

end

if ENV['PN'].nil?
  raise 'Please define the PLATFORM_NAME environment variable like: export PN=android'
else
  platform = ENV['PN'].downcase
end

if ENV['OA'].nil?
  raise 'Please define the PLATFORM_NAME environment variable like: export OA=local'
else
  appium = ENV['OA'].downcase
end

case platform
  when 'android'
    caps = load_appium_configuration(platform, appium)
    caps[:appium_lib][:export_session]=true
    load_module('./features/page/android/*.rb')
    $ENV = Android
  
  when 'ios'
    caps = load_appium_configuration(platform,appium)
    caps[:appium_lib][:export_session]=true
    load_module('./features/page/ios/*.rb')
    $ENV = IOS
  else
    raise("Not supported platform #{ENV['PN']}")
end

Appium::Driver.new(caps)
Appium.promote_appium_methods AppiumWorld

# world settings
World(Test::Unit::Assertions)

World do
  AppiumWorld.new
  AssertExtension.new
end


#cucumber setup
Before('@wip, @bug') do
  if $ENV == Android
    pending
  end
end

Before('@wip_android') do
  if $ENV == Android
    pending
  end
end

Before('@wip_ios') do
  if $ENV == IOS
    pending
  end
end

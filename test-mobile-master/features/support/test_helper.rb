require 'appium_lib'
require 'minitest/autorun'
require 'minitest/hooks/test'

class MiniTest::Unit::TestCase
  unless methods.include?(:test)
    def self.test(n, &b)
      define_method("test_#{n}", &b)
    end
  end
end

class AppiumTest < Minitest::Test
  include Minitest::Hooks
end
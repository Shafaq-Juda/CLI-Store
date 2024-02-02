require 'minitest/autorun'
require './app'

class TestApp < Minitest::Test
  def test_application
    application = App.new
    assert_instance_of Store, App.new.run, "App method failed"
  end
end

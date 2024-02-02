require 'minitest/autorun'
require './app'

class TestApp < Minitest::Test
  def test_application
    application = App.new
    assert_equal "Invalid option! Please try again.", application.select_department(8), "Select Department method failed"           
  end
end


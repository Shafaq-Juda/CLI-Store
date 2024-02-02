require 'minitest/autorun'
require './store'

class TestApp < Minitest::Test
  def test_application
    store = Store.new("Grocery",-1)
    assert store.aisle > 0, "Incorrect aisle number"           
  end
  def test_aisle
    store = Store.new("Clothing",-2)
    assert_equal store.valid_aisle?, true, "aisle not valid"
  end
end

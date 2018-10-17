require 'minitest/autorun'
require 'minitest/pride'
require './lib/house'
require './lib/room'
require 'pry'

class HouseTest < Minitest::Test

  def test_that_it_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_it_has_a_price
    house = House.new("$400000", "123 sugar lane")
    assert_equal "$400000", house.price
  end

  def test_it_has_a_candyland_address
    house = House.new("$400000", "123 sugar lane")
    assert_equal "123 sugar lane", house.address
  end



end

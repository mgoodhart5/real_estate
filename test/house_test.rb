require 'minitest/autorun'
require 'minitest/pride'
require './lib/house'
require './lib/room'
require 'pry'

class HouseTest < Minitest::Test
  def test_that_it_exists
    house = House.new
    assert_instance_of House, house
  end

end

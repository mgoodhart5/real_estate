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

  def test_it_has_an_empty_array_for_rooms
    house = House.new("$400000", "123 sugar lane")
    assert_equal [], house.rooms
  end

  def test_it_can_add_rooms
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    house.add_room(room_1)
    assert_equal 1, house.rooms.count
    room_2 = Room.new(:bedroom, 11, 15)
    house.add_room(room_2)
    assert_equal 2, house.rooms.count
  end

  def test_it_can_have_more_bedrooms
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    house.add_room(room_1)
    room_2 = Room.new(:bedroom, 11, 15)
    house.add_room(room_2)
    room_3 = Room.new(:living_room, 25, 15)
    house.add_room(room_3)
    room_4 = Room.new(:basement, 30, 41)
    house.add_room(room_4)
    assert_equal 4, house.rooms.count
  end

  def test_it_can_organize_rooms_by_category
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    house.add_room(room_1)
    room_2 = Room.new(:bedroom, 11, 15)
    house.add_room(room_2)
    room_3 = Room.new(:living_room, 25, 15)
    house.add_room(room_3)
    room_4 = Room.new(:basement, 30, 41)
    house.add_room(room_4)
    assert_equal 2, house.rooms_from_category(:bedroom)
    assert_equal 1, house.rooms_from_category(:basement)
  end

  def test_it_has_an_area
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    house.add_room(room_1)
    room_2 = Room.new(:bedroom, 11, 15)
    house.add_room(room_2)
    room_3 = Room.new(:living_room, 25, 15)
    house.add_room(room_3)
    room_4 = Room.new(:basement, 30, 41)
    house.add_room(room_4)
    assert_equal 1900, house.area
  end



end

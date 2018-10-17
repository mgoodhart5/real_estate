require 'pry'

class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(categ)
    total = @rooms.find_all do |room|
      room.category == categ
    end
    total.count
  end

  def area
    total = @rooms.collect do |room|
      room.area
    end
    total.sum
  end

  def price_per_square_foot
    sq_ft = @price.gsub("$", "").to_f/ area
    sq_ft.round(2)
  end

end

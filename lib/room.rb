require 'pry'

class Room
  attr_reader :area, :category

  def initialize(room_kind, length, width)
    @area = length * width
    @category = room_kind
  end
  
end

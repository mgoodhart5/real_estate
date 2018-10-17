require 'pry'

class Room
  attr_reader :area, :category

  def initialize(bedroom, length, width)
    @area = length * width
    @category = :bedroom
  end
end

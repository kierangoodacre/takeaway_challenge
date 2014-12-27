require_relative 'restaurant'

class User

   # attr_reader :phone

  def initialize(restaurant)
    @restaurant = restaurant
  end


  def place_order *items
    @restaurant.receive_order(*items)
  end

  end
require_relative 'restaurant'

class User

   attr_reader :restaurant

  def initialize restaurant
    @restaurant = restaurant
  end

  def place_order *items
    restaurant.receive_order(*items)
  end

  def menu_request
    @restaurant.menu
  end

end
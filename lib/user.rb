require_relative 'restaurant'

class User

   attr_reader :phone

  def initialize(restaurant)
    @restaurant = restaurant
    @phone = phone
  end

  def place_order *items
    @restaurant.receive_order(*items)
  end

  def menu_request
    @restaurant.menu
  end

end
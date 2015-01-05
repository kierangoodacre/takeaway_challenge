require_relative 'restaurant'
require_relative 'menu'

class User

   attr_reader :restaurant, :menu

  def initialize restaurant, menu
    @restaurant = restaurant
    @menu = menu
  end

  def place_order *items
    restaurant.receive_order(*items)
  end

  def menu_request
    menu.item_prices
  end

end
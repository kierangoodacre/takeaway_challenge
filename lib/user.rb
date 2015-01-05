require_relative 'restaurant'
require_relative 'menu'
require_relative 'message'

class User

  attr_reader :restaurant, :menu, :message


  def initialize restaurant, menu, message
    @restaurant = restaurant
    @menu = menu
    @message = message
  end

  def place_order *items
    restaurant.receive_order(*items)
    message.send_text
  end

  def menu_request
    menu.item_prices
  end

end
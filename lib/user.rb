require 'twilio-ruby'

require_relative 'restaurant'
require_relative 'menu'

class User

  account_sid = 'ACd622d7c9b5bb8dbb0d12d9e40d9ae827'
  auth_token = '8c9369a8312bc9c6bca0a711cf618f5a'

  attr_reader :restaurant, :menu

  @client = Twilio::REST::Client.new account_sid, auth_token

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
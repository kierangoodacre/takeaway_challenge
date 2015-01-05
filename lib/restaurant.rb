require_relative 'user'
require_relative 'menu'
require_relative 'items'

class Restaurant

  attr_reader :menu, :items

  def initialize menu, items
    @menu = menu
    @items = items
  end

  def todays_menu
    menu.item_prices
  end

  def stocklist
    items.stocklist
  end

  def search_menu
    lambda { |key|todays_menu.has_key?(key) }
  end

  def receive_order(*items)
    error_message(*items)
    :ordered if items.all?(&search_menu)
  end

  def error
    raise "Sorry not in stock"
  end

  def error_message(*items)
    error unless items.all?(&search_menu)
  end

  # attr_reader :place, :menu, :bill


  # def initialize
  #   @menu = menu
  #   @bill = bill 
  # end

  # def bill
  #   @bill ||= []
  # end

  # def menu
  #   menu = { "burger" => 5, "chips" => 2, "coke" => 1}
  # end




  # def receive_order(*items)
  #   error_message(*items)
  #   add_to_bill(*items)
  #   order_status(items)
  # end

  # def add_to_bill(*items)
  #   bill << menu.values_at(*items)
  # end

  # def order_status(items)
  #   :ordered if items.all?(&search_menu)
  # end

  # def stocklist
  #   @menu
  # end

  # def bill_total
  #   @bill.inject{|sum, num| sum + num}
  # end

end
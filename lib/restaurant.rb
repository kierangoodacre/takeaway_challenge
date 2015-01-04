require_relative 'user'
require_relative 'menu'

class Restaurant

  attr_reader :menu

  def initialize menu
    @menu = menu
  end

  def todays_menu
    menu.item_prices
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

  # def error
  #   raise "Sorry not in stock"
  # end

  # def search_menu
  #   lambda { |key|@menu.has_key?(key) }
  # end

  # def error_message(*items)
  #   error unless items.all?(&search_menu)
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
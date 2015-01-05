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

  def order_status(items)
    :ordered if items.all?(&search_menu)
  end

  def receive_order(*items)
    error_message(*items)
    add_to_bill(*items)
    remove_from_stocklist(*items)
    order_status(items)
  end

  def remove_from_stocklist(*items)
    items.each {|item| value = stocklist[item]-1 ; stocklist.merge!(item => value)}
  end

  def error
    raise "Sorry not in stock"
  end

  def error_message(*items)
    error unless items.all?(&search_menu)
  end

  def add_to_bill(*items)
    @bill = todays_menu.values_at(*items)
  end


  def bill_total
    @bill.inject(:+)
  end


end
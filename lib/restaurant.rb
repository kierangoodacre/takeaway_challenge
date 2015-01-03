require_relative 'user'

class Restaurant

  attr_reader :place, :menu, :bill


  def initialize
    @menu = menu
    @bill = bill 
  end

  def bill
    @bill ||= []
  end

  def menu
    menu = { "burger" => 5, "chips" => 2, "coke" => 1}
  end

  def error
    raise "Sorry not in stock"
  end

  def search_menu
    lambda { |key|@menu.has_key?(key) }
  end

  def receive_order(*items)
    error unless items.all?(&search_menu)
    bill << menu.values_at(*items)
    :ordered if items.all?(&search_menu)
  end

  def stocklist
    @menu
  end

  def bill_total
    @bill.inject{|sum, num| sum + num}
  end

end
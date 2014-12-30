require_relative 'user'

class Restaurant

  attr_reader :place

  def initialize
    menu
    bill
  end

  def bill
    @bill = []
  end

  def menu
    @menu = {"burger" => 5.00, "chips" => 2.00, "coke" => 1.00}
  end

  def receive_order(*items)
    raise "Sorry not in stock" if items.all? { |key|@menu.has_key?(key) } == false
    :ordered if @menu.fetch(*items) 
  end

  def stocklist
    @menu
  end

  def bill_total
    @bill.inject(:+)
  end

end
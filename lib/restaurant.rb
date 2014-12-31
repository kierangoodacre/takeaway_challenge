require_relative 'user'

class Restaurant

  attr_reader :place


  def initialize
    menu
    bill
  end

  def bill
    @bill ||= []
  end

  def menu
    @menu = {"burger" => 5, "chips" => 2, "coke" => 1}
  end

  def receive_order(*items)
    raise "Sorry not in stock" unless items.all? { |key|@menu.has_key?(key) }
    bill << menu.values_at(*items)
    :ordered if items.all? { |key|@menu.has_key?(key) }
  end

  def stocklist
    @menu
  end

  def bill_total
    bill.inject(:+)
  end

end
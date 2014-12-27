require_relative 'user'

class Restaurant

  attr_reader :place

  def initialize
    menu
  end

  def menu
    @menu = {burger: 5.00, chips: 2.00, coke: 1.00}
  end

  def receive_order *items
    raise "Sorry not in stock" if @menu.key?(*items) == false
    :ordered if @menu.key?(*items) 
  end

  def stocklist
    @menu
  end

end
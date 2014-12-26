class Restaurant

  def initialize
    menu
  end

  def menu
    @menu = {burger: 5.00, chips: 2.00, coke: 1.00}
  end

  def receive_order item
    raise "Sorry not in stock" if @menu.key?(item) == false
    :ordered if @menu.key?(item) 
    # if @menu.key?(item)
    #   :ordered
    # else
    #  :not_on_the_menu
    # end
  end

end
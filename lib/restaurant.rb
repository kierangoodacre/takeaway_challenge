class Restaurant

  def menu
    @menu = {"burger" => 5.00, "chips" => 2.00, "coke" => 1.00}
  end

  def receive_order item
    @receive_order = :ordered
  end

  def check_menu
    @receive_order
  end

end
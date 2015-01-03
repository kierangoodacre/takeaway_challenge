class Menu

  attr_reader :item_prices

  def items
    [:burger, :chips, :coke]
  end

  def prices
    [5.00, 2.00, 1.00]
  end

  def item_prices
    Hash[*items.zip(prices).flatten]
  end

end
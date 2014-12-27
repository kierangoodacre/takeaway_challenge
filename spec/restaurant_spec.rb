require 'restaurant'

describe Restaurant do

  let (:restaurant) {Restaurant.new}

  it "should have a menu on initialization" do
    expect(restaurant.menu).to include(burger: 5.00)
  end

  it "should be able to receive correct order" do
    expect(restaurant.receive_order(:burger)).to eq(:ordered)
  end

  it "should raise error if not on the menu" do
    expect( lambda {restaurant.receive_order(:chicken)}).to raise_error(RuntimeError, "Sorry not in stock")
  end

  it "should have a stocklist on initialization" do
    expect(restaurant.stocklist).to include(:chips)
  end

  it "should be able to provide total price upon receiving order" do
    restaurant.receive_order(:burger, :chips, :coke)
    expect(restaurant.price_total).to eq(10.00)
  end

end
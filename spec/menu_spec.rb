require 'menu'

describe Menu do

  let (:menu) {Menu.new}

  it "should contain a menu on initialization" do
    expect(menu.items).to include :burger
  end 

  it "should contain a list of prices" do
    expect(menu.prices).to include 5.00
  end

  it "items should have a price" do
    expect(menu.item_prices).to include burger: 5.00
  end

end
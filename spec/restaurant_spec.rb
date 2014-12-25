require 'restaurant'

describe Restaurant do

  let (:restaurant) {Restaurant.new}

  it "should have a menu on initialization" do
    expect(restaurant.menu).to include("burger" => 5.00)
  end

  it "should be able to receive order" do
    expect(restaurant.receive_order("burger")).to eq(:ordered)
  end

  it "should be able to check the menu when reeiving order" do
    restaurant.menu
    restaurant.receive_order("burger")
    expect(restaurant.check_menu).to eq :ordered
  end

end
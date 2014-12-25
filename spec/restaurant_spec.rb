require 'restaurant'

describe Restaurant do

  let (:restaurant) {Restaurant.new}

  it "should have a menu on initialization" do
    expect(restaurant.menu).to include("burger" => 5.00)
  end

end
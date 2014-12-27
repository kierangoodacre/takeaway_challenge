require 'user'
require 'restaurant'

describe User do


  let (:restaurant) {Restaurant.new}
  let(:user) {User.new(restaurant)}

  it "should be able to order a burger" do
    expect(user.place_order(:burger)).to eq(:ordered)
  end

  it "should be able to request a menu" do
    user.menu_request
    expect(user.menu_request).to include :burger
  end

end
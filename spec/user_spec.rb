require 'user'
require 'restaurant'
require 'items'
require 'menu'

describe User do

	let (:items) {Items.new}
  let (:menu) {Menu.new}
  let(:restaurant) {Restaurant.new(menu, items)}
  let(:user) {User.new(restaurant)}

  it "should be able to order multiple items from menu" do
    expect(user.place_order(:burger, :chips)).to eq(:ordered)
  end

  xit "should be able to request a menu" do
    user.menu_request
    expect(user.menu_request).to include "burger"
  end

end
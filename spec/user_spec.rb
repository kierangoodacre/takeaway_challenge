require 'user'
require 'restaurant'
require 'items'
require 'menu'
require 'message'

describe User do

	let(:items) {Items.new}
  let(:menu) {Menu.new}
  let(:message) {Message.new}
  let(:restaurant) {Restaurant.new(menu, items)}
  let(:user) {User.new(restaurant, menu, message)}

  it "should be able to order multiple items from menu" do
    expect(user.place_order(:burger, :chips)).to eq(:ordered)
  end

  it "should be able to request a menu" do
    user.menu_request
    expect(user.menu_request).to include :burger
  end

end
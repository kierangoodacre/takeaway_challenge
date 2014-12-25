require 'user'

describe User do

  it "should be able to order a burger" do
    user = User.new
    expect(user.place_order("burger")).to eq true
  end

end
require 'items'

describe Items do

  let (:items) {Items.new}

  it "should contain a number of items" do
    expect(Items.burger.number).to eq(10)
  end

end
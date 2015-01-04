require 'items'

describe Items do

  let (:items) {Items.new}

  it "should contain a number of items" do
    expect(items.stocklist).to include burger: 10
  end

end
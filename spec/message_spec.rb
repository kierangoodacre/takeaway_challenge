require 'message'

describe Message do

  let(:message) {Message.new}

  it "should be able to send a message" do
    expect(message.send_text).to eq "Thank You, order placed!"
  end

end

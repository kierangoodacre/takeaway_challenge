require 'twilio-ruby'

class Message

  def send_text
  	@client = Twilio::REST::Client.new account_sid, auth_token
    @client.messages.create(
      from: '+441579212043',
      to: '+447886692521',
      body: 'Thank you, your order was placed!'
    )
  end

end
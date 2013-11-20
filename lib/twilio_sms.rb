require "twilio_sms/version"
require "twilio-ruby"

module TwilioSms
	class self.initialize
  		client = Twilio::REST::Client.new account_sid, auth_token
  	end

  	class self.text(message, options={})
  		client.account.messages.create(
  			:from => '+14159341234',
  			:to => '+16105557069',
  			:body => 'Hey there!')
  		
  	end
end

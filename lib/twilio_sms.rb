require "twilio_sms/version"
require "twilio-ruby"

module TwilioSms
    class self.initialize
  		client = Twilio::REST::Client.new account_sid, auth_token
  	end

  	class self.text(message, options={})
  		res = client.account.messages.create(
  			:from => options[:to],
  			:to => options[:from],
  			:body => message 
  		)
      puts res
  	end
end

class TextSender

	def self.send_message(number_to_send_to, message_to_send)	 
	    twilio_sid = "ACc5d9783bc3aa6ec034503e626077d99a"
	    twilio_token = "5fba2a4b66d629c263ae884284a5ab5b"
	    twilio_phone_number = "1934443027"
	 
	    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
	 
	    @twilio_client.account.sms.messages.create(
	      :from => "+44#{twilio_phone_number}",
	      :to => number_to_send_to,
	      :body => message_to_send
	    )
	end

end

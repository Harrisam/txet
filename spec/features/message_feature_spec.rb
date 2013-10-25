require 'spec_helper'

describe 'Message' do


	it 'should be able to send a message' do
		visit '/'
		fill_in 'Phone number to send message to:', with:'222222222'
		fill_in '... and your message', with: 'blah blah blah'

		expect(TextSender).to receive(:send_message)

		click_button 'Send Message!'

		expect(page).to have_content 'Your message has been sent! Woopie'
	end


end
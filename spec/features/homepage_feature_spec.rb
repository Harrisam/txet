require 'spec_helper'

describe 'Homepage' do 


	it 'should have a message form' do 
		visit '/'
		expect(page).to have_css '.text_form'
	end


end

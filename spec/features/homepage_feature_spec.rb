require 'spec_helper'

describe 'Homepage' do 


	it 'should have a message form' do 
		visit '/'
		expect(page).to have_css '.text_form'
	end

	it 'should have a button' do 
		visit '/'
		expect(page).to have_css '.submit_tag'
	end


end

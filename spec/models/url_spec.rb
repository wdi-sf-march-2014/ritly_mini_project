require 'spec_helper'

describe 'link' do
	it 'should not be empty' do
		url = Url.create(link: "http://www.google.com")
		url.should_not be_valid
		url.errors[:link].should include("can't be blank")
	end
	
end
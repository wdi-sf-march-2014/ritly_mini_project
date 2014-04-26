require 'spec_helper'

describe Url do
  it 'should create create a new instance of url given valid attributes' do
  end

describe 'link' do

	it 'should not be empty' do
		url = Url.create(random_string: "bhibvui3b2")
		url.should_not be_valid
		url.errors[:link].should include("can't be blank")
	end	
end

describe 'should be valid' do
	it 'should return both url and random string' do
		url = Url.create(link: "https://www.yahoo.com", random_string: "tevfcdvw")
		url.should be_valid	
	end
 end	

 end
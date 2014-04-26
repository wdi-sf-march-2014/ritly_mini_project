require 'spec_helper'

# describe Url do
#   it "should some examples to (or delete) #{__FILE__}" do
#   end
# end

# describe 'index' do
# 	it "should check route for status 200 and correct template" do
# 		redirect_to '/'
# 		expect(response.status).to be_success #or expect(response.status).to eq(200))
# 	end
# end


#can't be empty specs

 #describe
# before :each do
#  it

#  it


#  it

   
#  end

describe Url do
  it 'should create create a new instance of url given valid attributes' do
  end

describe 'link' do

  it 'should not be empty' do
    url = Url.create(random_string: "asdf234f")
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
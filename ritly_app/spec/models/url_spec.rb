require 'spec_helper'

describe Url do
  it 'should not be empty' do
  	url = Url.create(random_string: "ABCDEFGH")
  	url.should_not be_valid
  	url.errors[:link].should include("can't be blank")
  end

  it 'is at least three characters' do
  	url = Url.create(link: "www.google.com", random_string: "ABCDEFGH")
  	url.should be_valid
  end
end



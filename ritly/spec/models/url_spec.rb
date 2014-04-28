require 'spec_helper'

describe Url do
  it 'should not be empty' do
    url = Url.create(random_string: "12edr")
    url.should_not be_valid
    url.errors[:link].should include("can not be blank")
  end

  it 'is at least two characters' do
    url = Url.create(link: "www.facebook.com", random_string: "23j5t")
    url.should be_valid
  end
end
require 'spec_helper'

describe Url do

describe 'link' do
  it 'should not be empty' do
    url = Url.create(random_string: "ABCDEFG")
    url.should_not be_valid #(be_valid is a matcher that comes with rspec)
    url.errors[:link].should include("can't be blank")
  end
end

describe '' do
    it "should validate that a link has at least 3 characters" do
    url = Url.create(link: "http://www.google.com", random_string: "ABCDEFG")
    url.should be_valid
    end
end

end



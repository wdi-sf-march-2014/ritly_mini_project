require 'spec_helper'

describe Rit do

  #pending "add some examples to (or delete) #{__FILE__}"

  describe 'link' do
    it 'should not be empty' do
      rit = Rit.create(random: "ABDEFG")
      rit.should_not be_valid
      rit.errors[:link].should include("can't be blank")
    end
  end

  describe '' do
  	it "should validate that a link has at least 3 characters" do
    rit = Rit.create(link: "www.google.com", random: "ABCDEFG")
    rit.should be_valid
  	end
  end 

end

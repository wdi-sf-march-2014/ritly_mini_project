require 'spec_helper'

describe UrlsController do
  
  before(:each) do
    @url = Url.create(link: "wwww.google.com", random_string: "ABCDEFG")
  end

  describe 'GET new' do
    it 'should create a new url' do
    expect(response.status).to eq(200)
    end
  end

  describe 'GET root' do
    it 'should display the homepage' do
    expect(response.status).to eq(200)
    end
  end

  describe 'GET show' do

      it 'should render show template' do
      get :show, id: @url
      expect(response.status).to eq(200)
      response.should render_template :show
      end
  end

  describe 'GET edit' do
      it 'should render edit template' do
      get :edit, id: @url
      expect(response.status).to eq(200)
      response.should render_template :edit
      end
  end

end






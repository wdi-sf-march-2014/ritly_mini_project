require 'spec_helper'
# 200 status check
	
  

  
describe UrlsController do

  before(:each) do
  @url = Url.create(link: "wwww.google.com", random_string: "ABCDEFG" )
  end

  describe 'Get new' do
    it 'returns a 200 Ok status' do
      url = Url.create
      get :new
      expect(response.status).to eq(200)
    end

    it 'renders the new template' do
     get :new
     expect(response).to render_template("new")
    end
  end

  describe 'Get index' do
    it 'returns a 200 Ok status' do
      url = Url.create
      get :index
      expect(response.status).to eq(200)
    end
    it 'renders the index template' do
      get :index
      expect(response).to render_template("index")  
  end
  end
  
  describe 'Get edit' do
    it 'returns a 200 Ok status' do
      get :edit, id:@url.id 
      expect(response.status).to eq(200)
    end
    it 'renders the edit template' do
      get :edit, id:@url.id
      expect(response).to render_template("edit")
    end
    end  
      
  describe 'Get show' do
    it 'returns a 20 OK status' do
      get :show, id:@url.id
      expect(response.status).to eq(200)
    end   
    it 'renders the show template' do
      get :show, id:@url.id
      expect(response).to render_template("show")
    end   
  end
end


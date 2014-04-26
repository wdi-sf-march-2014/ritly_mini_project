require 'spec_helper'
# 200 status check
describe "Urls Controller" do

	# 200 status check

	
  

  describe 'GET new' do

    before(:each) do
      @url = Url.create(link: "wwww.gmail.com", random_string: "qwertyui" )
    end

    it 'returns a 200 Ok status' do
      #url = Url.create
      get :index
      response.should be_ok
    end

    it 'renders the new template' do
  	 get :new
  	 expect(response).to render_template("new")
    end

    it 'renders the show template' do
     get :show, id: @url.id
     expect(response).to render_template("new")
    end

  end

end
# 	describe 'creating a new url' do
# 		it 'renders a form and creates a new url' do
		
# 		get '/urls/new'
# 		expect(response).to render_template(:new)

# 		post "/urls", urls: {link: "This is your New Unique URL"}

# 		expect(response.status).to be_success 
# 		follow_redirect!

# 		expect(response).to render_template(:show)
# 		expect(response.body).to include("This is your New Unique URL")

# 		end
# 	end
# end

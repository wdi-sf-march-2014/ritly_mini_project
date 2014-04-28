require 'spec_helper'

describe 'Url Management' do 

	describe 'creating a new url' do
		it 'renders form and creates a url'do
			get '/urls/new'
			expect(response).to render_template(:new) 

			post '/urls', url: {link: "www.google.com", random_string: "abc123"}

			expect(response).to redirect_to( assigns(:url) )
			follow_redirect!

			expect(response).to render_template(:show)
			expect(response.body).to include("abc123") 
		end
	end

	describe 'lists all my urls' do
		it 'shows a list of all urls'do
			get '/urls'
			expect(response).to render_template(:index)
			url = Url.create(link:"www.google.com", random_string:"abc123")
			expect(response.body).to include("www.google.com")

		end
	end


end
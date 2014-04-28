require 'spec_helper'

describe 'Urls Management' do 
	describe 'going to the root path' do
		it 'should have OK status' do
			get '/'
			response.response_code.should == 200
		end
		it 'diplays a form to create new aliases' do
			get '/'
			expect(response).to render_template(:new)
		end
	end
	describe 'the show page for an individual alias' do
		it 'should have OK status' do
			get '/urls/1'
			response.response_code.should == 200
		end
		it 'should display information about the alias' do
			get '/urls/2'
			expect(response.body).to include('http://www.google.com')
		end
	end
	describe 'entering form data on the create page' do
		it 'creates a new alias in the database' do
			post '/urls', url: {link: 'http://www.github.com', random_string: 'qwerty'}
			expect(response).to redirect_to (assigns(:url))
		end
	end
end

# require "spec_helper"

# describe "Widget management" do

#   it "creates a Widget and redirects to the Widget's page" do
#     get "/widgets/new"
#     expect(response).to render_template(:new)

#     post "/widgets", :widget => {:name => "My Widget"}

#     expect(response).to redirect_to(assigns(:widget))
#     follow_redirect!

#     expect(response).to render_template(:show)
#     expect(response.body).to include("Widget was successfully created.")
#   end

# end
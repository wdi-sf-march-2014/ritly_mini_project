require 'spec_helper'

describe UrlsController do

	before(:each) do
		@url = Url.create(link: "http://www.google.com", random_string: "ABCDEF")
	end

	describe 'GET new' do
		it 'returns a 200 OK status' do
			url = Url.create
			get :new
			expect(response.status).to eq(200)
		end

		it 'renders the new template' do
			get :new
			expect(response).to render_template("new")
		end
	end

	describe 'GET index' do
		it 'returns a 200 OK status' do
			url = Url.all
			get :index
			expect(response.status).to eq(200)
		end
	
	it 'renders the index template' do
			get :index
			expect(response).to render_template("index")
		end
	end

	describe 'GET edit' do
		it 'returns a 200 OK status' do
			get :edit, id:@url.id
			expect(response.status).to eq(200)
		end
		it 'renders the edit template' do
			get :edit, id:@url.id
			expect(response).to render_template("edit")
		end
	end

	describe 'GET show' do
		it 'returns a 200 OK status' do
			get :show, id:@url.id
			expect(response.status).to eq(200)
		end
		it 'renders the show template' do
			get :show, id:@url.id
			expect(response).to render_template("show")
		end
	end
end

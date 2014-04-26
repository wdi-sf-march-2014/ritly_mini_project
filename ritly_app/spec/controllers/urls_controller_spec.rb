require 'spec_helper'

describe UrlsController do

before(:each) do
@url = Url.create(link: "wwww.google.com", random_string: "ABCDEFG" )
end

describe 'GET new' do
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

end

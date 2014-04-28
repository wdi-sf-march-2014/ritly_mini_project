require 'spec_helper'

describe RitsController do

	before(:each) do
		@rit = Rit.create(link: "www.google.com", random: "ABCDEFG")
	end

  	 it "renders status 200(ok)" do
  	 	@rit = Rit.create
  	    get :index
  	    (expect(response.status).to eq(200))
  	    # expect(response).to render_template("route")
  	 	end
	
  	 it "renders the index template" do
  	    get :index
  	    expect(response).to render_template("index")
  	  end	
	
  	it "renders status 200(ok)" do
  	 	@rit = Rit.new
  	    get :new
  	    (expect(response.status).to eq(200))
  	    # expect(response).to render_template("route")
  	 	end
	
  	 it "renders the index template" do
  	    get :new
  	    expect(response).to render_template("new")
  	 end	

  	 it "renders status 200(ok)" do
  	   get :show, id: @rit
  	   (expect(response.status).to eq(200))
  	 end

	
  	 it "render show tempalte" do
      get :show, id: @rit
      response.should render_template :show
    end
	
  	 it "renders status 200(ok)" do
  	   get :edit, id: @rit
  	   (expect(response.status).to eq(200))
  	 end

	
  	 it "render show tempalte" do
      get :edit, id: @rit
      response.should render_template :edit
    end	
	
end
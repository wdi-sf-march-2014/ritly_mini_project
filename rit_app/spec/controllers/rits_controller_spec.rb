require 'spec_helper'

describe RitsController do

   it "renders status 200(ok)" do
   	rit = rit.create
      get :link
      (expect(response.status).to eq(200))
      expect(response).to render_template("route")
   	
  	end
end
 

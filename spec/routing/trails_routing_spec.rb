require "spec_helper"

describe TrailsController do
  describe "routing" do

    it "routes to #index" do
      get("/trails").should route_to("trails#index")
    end

    it "routes to #new" do
      get("/trails/new").should route_to("trails#new")
    end

    it "routes to #show" do
      get("/trails/1").should route_to("trails#show", :id => "1")
    end

    it "routes to #edit" do
      get("/trails/1/edit").should route_to("trails#edit", :id => "1")
    end

    it "routes to #create" do
      post("/trails").should route_to("trails#create")
    end

    it "routes to #update" do
      put("/trails/1").should route_to("trails#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/trails/1").should route_to("trails#destroy", :id => "1")
    end

  end
end

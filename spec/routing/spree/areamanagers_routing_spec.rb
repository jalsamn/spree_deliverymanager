require "rails_helper"

RSpec.describe Spree::AreamanagersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/spree/areamanagers").to route_to("spree/areamanagers#index")
    end

    it "routes to #new" do
      expect(:get => "/spree/areamanagers/new").to route_to("spree/areamanagers#new")
    end

    it "routes to #show" do
      expect(:get => "/spree/areamanagers/1").to route_to("spree/areamanagers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/spree/areamanagers/1/edit").to route_to("spree/areamanagers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/spree/areamanagers").to route_to("spree/areamanagers#create")
    end

    it "routes to #update" do
      expect(:put => "/spree/areamanagers/1").to route_to("spree/areamanagers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/spree/areamanagers/1").to route_to("spree/areamanagers#destroy", :id => "1")
    end

  end
end

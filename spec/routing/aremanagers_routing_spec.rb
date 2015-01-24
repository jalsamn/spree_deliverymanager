require "rails_helper"

RSpec.describe AremanagersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/aremanagers").to route_to("aremanagers#index")
    end

    it "routes to #new" do
      expect(:get => "/aremanagers/new").to route_to("aremanagers#new")
    end

    it "routes to #show" do
      expect(:get => "/aremanagers/1").to route_to("aremanagers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/aremanagers/1/edit").to route_to("aremanagers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/aremanagers").to route_to("aremanagers#create")
    end

    it "routes to #update" do
      expect(:put => "/aremanagers/1").to route_to("aremanagers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/aremanagers/1").to route_to("aremanagers#destroy", :id => "1")
    end

  end
end

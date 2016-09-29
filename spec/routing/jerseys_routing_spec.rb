require "rails_helper"

RSpec.describe JerseysController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/jerseys").to route_to("jerseys#index")
    end

    it "routes to #new" do
      expect(:get => "/jerseys/new").to route_to("jerseys#new")
    end

    it "routes to #show" do
      expect(:get => "/jerseys/1").to route_to("jerseys#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/jerseys/1/edit").to route_to("jerseys#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/jerseys").to route_to("jerseys#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/jerseys/1").to route_to("jerseys#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/jerseys/1").to route_to("jerseys#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/jerseys/1").to route_to("jerseys#destroy", :id => "1")
    end

  end
end

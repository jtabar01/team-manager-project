require "rails_helper"

RSpec.describe PostalAddressesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/postal_addresses").to route_to("postal_addresses#index")
    end

    it "routes to #new" do
      expect(:get => "/postal_addresses/new").to route_to("postal_addresses#new")
    end

    it "routes to #show" do
      expect(:get => "/postal_addresses/1").to route_to("postal_addresses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/postal_addresses/1/edit").to route_to("postal_addresses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/postal_addresses").to route_to("postal_addresses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/postal_addresses/1").to route_to("postal_addresses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/postal_addresses/1").to route_to("postal_addresses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/postal_addresses/1").to route_to("postal_addresses#destroy", :id => "1")
    end

  end
end

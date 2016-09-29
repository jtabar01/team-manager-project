require "rails_helper"

RSpec.describe OrganizationTeamsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/organization_teams").to route_to("organization_teams#index")
    end

    it "routes to #new" do
      expect(:get => "/organization_teams/new").to route_to("organization_teams#new")
    end

    it "routes to #show" do
      expect(:get => "/organization_teams/1").to route_to("organization_teams#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/organization_teams/1/edit").to route_to("organization_teams#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/organization_teams").to route_to("organization_teams#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/organization_teams/1").to route_to("organization_teams#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/organization_teams/1").to route_to("organization_teams#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/organization_teams/1").to route_to("organization_teams#destroy", :id => "1")
    end

  end
end

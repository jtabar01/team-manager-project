require "rails_helper"

RSpec.describe PersonPhonesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/person_phones").to route_to("person_phones#index")
    end

    it "routes to #new" do
      expect(:get => "/person_phones/new").to route_to("person_phones#new")
    end

    it "routes to #show" do
      expect(:get => "/person_phones/1").to route_to("person_phones#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/person_phones/1/edit").to route_to("person_phones#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/person_phones").to route_to("person_phones#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/person_phones/1").to route_to("person_phones#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/person_phones/1").to route_to("person_phones#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/person_phones/1").to route_to("person_phones#destroy", :id => "1")
    end

  end
end

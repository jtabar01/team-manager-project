require 'rails_helper'

RSpec.describe "PersonPostalAddresses", type: :request do
  describe "GET /person_postal_addresses" do
    it "works! (now write some real specs)" do
      get person_postal_addresses_path
      expect(response).to have_http_status(200)
    end
  end
end

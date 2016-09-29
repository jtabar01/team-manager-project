require 'rails_helper'

RSpec.describe "PostalAddresses", type: :request do
  describe "GET /postal_addresses" do
    it "works! (now write some real specs)" do
      get postal_addresses_path
      expect(response).to have_http_status(200)
    end
  end
end

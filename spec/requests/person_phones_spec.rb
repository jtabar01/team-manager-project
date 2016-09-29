require 'rails_helper'

RSpec.describe "PersonPhones", type: :request do
  describe "GET /person_phones" do
    it "works! (now write some real specs)" do
      get person_phones_path
      expect(response).to have_http_status(200)
    end
  end
end

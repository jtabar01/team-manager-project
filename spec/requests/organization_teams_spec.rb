require 'rails_helper'

RSpec.describe "OrganizationTeams", type: :request do
  describe "GET /organization_teams" do
    it "works! (now write some real specs)" do
      get organization_teams_path
      expect(response).to have_http_status(200)
    end
  end
end

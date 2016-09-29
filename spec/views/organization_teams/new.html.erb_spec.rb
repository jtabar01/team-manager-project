require 'rails_helper'

RSpec.describe "organization_teams/new", type: :view do
  before(:each) do
    assign(:organization_team, OrganizationTeam.new(
      :organization => nil,
      :team => nil
    ))
  end

  it "renders new organization_team form" do
    render

    assert_select "form[action=?][method=?]", organization_teams_path, "post" do

      assert_select "input#organization_team_organization_id[name=?]", "organization_team[organization_id]"

      assert_select "input#organization_team_team_id[name=?]", "organization_team[team_id]"
    end
  end
end

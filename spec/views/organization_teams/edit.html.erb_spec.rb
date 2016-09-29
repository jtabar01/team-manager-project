require 'rails_helper'

RSpec.describe "organization_teams/edit", type: :view do
  before(:each) do
    @organization_team = assign(:organization_team, OrganizationTeam.create!(
      :organization => nil,
      :team => nil
    ))
  end

  it "renders the edit organization_team form" do
    render

    assert_select "form[action=?][method=?]", organization_team_path(@organization_team), "post" do

      assert_select "input#organization_team_organization_id[name=?]", "organization_team[organization_id]"

      assert_select "input#organization_team_team_id[name=?]", "organization_team[team_id]"
    end
  end
end

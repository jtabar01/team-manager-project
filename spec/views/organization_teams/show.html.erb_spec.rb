require 'rails_helper'

RSpec.describe "organization_teams/show", type: :view do
  before(:each) do
    @organization_team = assign(:organization_team, OrganizationTeam.create!(
      :organization => nil,
      :team => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

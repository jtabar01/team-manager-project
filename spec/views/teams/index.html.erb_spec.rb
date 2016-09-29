require 'rails_helper'

RSpec.describe "teams/index", type: :view do
  before(:each) do
    assign(:teams, [
      Team.create!(
        :name => "Name",
        :age_group => "Age Group"
      ),
      Team.create!(
        :name => "Name",
        :age_group => "Age Group"
      )
    ])
  end

  it "renders a list of teams" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Age Group".to_s, :count => 2
  end
end

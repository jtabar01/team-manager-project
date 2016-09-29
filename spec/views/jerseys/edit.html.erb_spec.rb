require 'rails_helper'

RSpec.describe "jerseys/edit", type: :view do
  before(:each) do
    @jersey = assign(:jersey, Jersey.create!(
      :person => nil,
      :team => nil,
      :number => 1
    ))
  end

  it "renders the edit jersey form" do
    render

    assert_select "form[action=?][method=?]", jersey_path(@jersey), "post" do

      assert_select "input#jersey_person_id[name=?]", "jersey[person_id]"

      assert_select "input#jersey_team_id[name=?]", "jersey[team_id]"

      assert_select "input#jersey_number[name=?]", "jersey[number]"
    end
  end
end

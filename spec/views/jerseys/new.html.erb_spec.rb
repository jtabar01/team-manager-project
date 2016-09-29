require 'rails_helper'

RSpec.describe "jerseys/new", type: :view do
  before(:each) do
    assign(:jersey, Jersey.new(
      :person => nil,
      :team => nil,
      :number => 1
    ))
  end

  it "renders new jersey form" do
    render

    assert_select "form[action=?][method=?]", jerseys_path, "post" do

      assert_select "input#jersey_person_id[name=?]", "jersey[person_id]"

      assert_select "input#jersey_team_id[name=?]", "jersey[team_id]"

      assert_select "input#jersey_number[name=?]", "jersey[number]"
    end
  end
end

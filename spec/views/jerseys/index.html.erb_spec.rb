require 'rails_helper'

RSpec.describe "jerseys/index", type: :view do
  before(:each) do
    assign(:jerseys, [
      Jersey.create!(
        :person => nil,
        :team => nil,
        :number => 2
      ),
      Jersey.create!(
        :person => nil,
        :team => nil,
        :number => 2
      )
    ])
  end

  it "renders a list of jerseys" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end

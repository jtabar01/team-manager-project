require 'rails_helper'

RSpec.describe "person_phones/index", type: :view do
  before(:each) do
    assign(:person_phones, [
      PersonPhone.create!(
        :person => nil,
        :phone => nil
      ),
      PersonPhone.create!(
        :person => nil,
        :phone => nil
      )
    ])
  end

  it "renders a list of person_phones" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "person_postal_addresses/index", type: :view do
  before(:each) do
    assign(:person_postal_addresses, [
      PersonPostalAddress.create!(
        :person => nil,
        :postal_address => nil
      ),
      PersonPostalAddress.create!(
        :person => nil,
        :postal_address => nil
      )
    ])
  end

  it "renders a list of person_postal_addresses" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

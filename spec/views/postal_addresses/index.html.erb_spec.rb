require 'rails_helper'

RSpec.describe "postal_addresses/index", type: :view do
  before(:each) do
    assign(:postal_addresses, [
      PostalAddress.create!(
        :street_line_1 => "Street Line 1",
        :street_line_2 => "Street Line 2",
        :city => "City",
        :state => "State",
        :zip => "Zip"
      ),
      PostalAddress.create!(
        :street_line_1 => "Street Line 1",
        :street_line_2 => "Street Line 2",
        :city => "City",
        :state => "State",
        :zip => "Zip"
      )
    ])
  end

  it "renders a list of postal_addresses" do
    render
    assert_select "tr>td", :text => "Street Line 1".to_s, :count => 2
    assert_select "tr>td", :text => "Street Line 2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
  end
end

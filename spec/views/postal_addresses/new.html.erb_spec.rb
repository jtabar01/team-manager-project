require 'rails_helper'

RSpec.describe "postal_addresses/new", type: :view do
  before(:each) do
    assign(:postal_address, PostalAddress.new(
      :street_line_1 => "MyString",
      :street_line_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString"
    ))
  end

  it "renders new postal_address form" do
    render

    assert_select "form[action=?][method=?]", postal_addresses_path, "post" do

      assert_select "input#postal_address_street_line_1[name=?]", "postal_address[street_line_1]"

      assert_select "input#postal_address_street_line_2[name=?]", "postal_address[street_line_2]"

      assert_select "input#postal_address_city[name=?]", "postal_address[city]"

      assert_select "input#postal_address_state[name=?]", "postal_address[state]"

      assert_select "input#postal_address_zip[name=?]", "postal_address[zip]"
    end
  end
end

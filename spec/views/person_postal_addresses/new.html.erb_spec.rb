require 'rails_helper'

RSpec.describe "person_postal_addresses/new", type: :view do
  before(:each) do
    assign(:person_postal_address, PersonPostalAddress.new(
      :person => nil,
      :postal_address => nil
    ))
  end

  it "renders new person_postal_address form" do
    render

    assert_select "form[action=?][method=?]", person_postal_addresses_path, "post" do

      assert_select "input#person_postal_address_person_id[name=?]", "person_postal_address[person_id]"

      assert_select "input#person_postal_address_postal_address_id[name=?]", "person_postal_address[postal_address_id]"
    end
  end
end

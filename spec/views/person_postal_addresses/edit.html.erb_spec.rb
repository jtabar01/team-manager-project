require 'rails_helper'

RSpec.describe "person_postal_addresses/edit", type: :view do
  before(:each) do
    @person_postal_address = assign(:person_postal_address, PersonPostalAddress.create!(
      :person => nil,
      :postal_address => nil
    ))
  end

  it "renders the edit person_postal_address form" do
    render

    assert_select "form[action=?][method=?]", person_postal_address_path(@person_postal_address), "post" do

      assert_select "input#person_postal_address_person_id[name=?]", "person_postal_address[person_id]"

      assert_select "input#person_postal_address_postal_address_id[name=?]", "person_postal_address[postal_address_id]"
    end
  end
end

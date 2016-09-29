require 'rails_helper'

RSpec.describe "person_email_addresses/new", type: :view do
  before(:each) do
    assign(:person_email_address, PersonEmailAddress.new(
      :person => nil,
      :email_address => nil
    ))
  end

  it "renders new person_email_address form" do
    render

    assert_select "form[action=?][method=?]", person_email_addresses_path, "post" do

      assert_select "input#person_email_address_person_id[name=?]", "person_email_address[person_id]"

      assert_select "input#person_email_address_email_address_id[name=?]", "person_email_address[email_address_id]"
    end
  end
end

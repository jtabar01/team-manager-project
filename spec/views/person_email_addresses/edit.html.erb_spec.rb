require 'rails_helper'

RSpec.describe "person_email_addresses/edit", type: :view do
  before(:each) do
    @person_email_address = assign(:person_email_address, PersonEmailAddress.create!(
      :person => nil,
      :email_address => nil
    ))
  end

  it "renders the edit person_email_address form" do
    render

    assert_select "form[action=?][method=?]", person_email_address_path(@person_email_address), "post" do

      assert_select "input#person_email_address_person_id[name=?]", "person_email_address[person_id]"

      assert_select "input#person_email_address_email_address_id[name=?]", "person_email_address[email_address_id]"
    end
  end
end

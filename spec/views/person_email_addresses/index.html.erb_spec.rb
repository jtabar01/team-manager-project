require 'rails_helper'

RSpec.describe "person_email_addresses/index", type: :view do
  before(:each) do
    assign(:person_email_addresses, [
      PersonEmailAddress.create!(
        :person => nil,
        :email_address => nil
      ),
      PersonEmailAddress.create!(
        :person => nil,
        :email_address => nil
      )
    ])
  end

  it "renders a list of person_email_addresses" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end

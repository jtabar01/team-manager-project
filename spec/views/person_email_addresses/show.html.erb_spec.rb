require 'rails_helper'

RSpec.describe "person_email_addresses/show", type: :view do
  before(:each) do
    @person_email_address = assign(:person_email_address, PersonEmailAddress.create!(
      :person => nil,
      :email_address => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

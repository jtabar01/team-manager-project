require 'rails_helper'

RSpec.describe "person_postal_addresses/show", type: :view do
  before(:each) do
    @person_postal_address = assign(:person_postal_address, PersonPostalAddress.create!(
      :person => nil,
      :postal_address => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

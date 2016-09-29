require 'rails_helper'

RSpec.describe "postal_addresses/show", type: :view do
  before(:each) do
    @postal_address = assign(:postal_address, PostalAddress.create!(
      :street_line_1 => "Street Line 1",
      :street_line_2 => "Street Line 2",
      :city => "City",
      :state => "State",
      :zip => "Zip"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street Line 1/)
    expect(rendered).to match(/Street Line 2/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
  end
end

require 'rails_helper'

RSpec.describe "people/show", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :gender => "Gender",
      :height_in_inches => 2,
      :weight_in_pounds => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end

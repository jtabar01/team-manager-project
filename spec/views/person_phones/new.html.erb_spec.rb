require 'rails_helper'

RSpec.describe "person_phones/new", type: :view do
  before(:each) do
    assign(:person_phone, PersonPhone.new(
      :person => nil,
      :phone => nil
    ))
  end

  it "renders new person_phone form" do
    render

    assert_select "form[action=?][method=?]", person_phones_path, "post" do

      assert_select "input#person_phone_person_id[name=?]", "person_phone[person_id]"

      assert_select "input#person_phone_phone_id[name=?]", "person_phone[phone_id]"
    end
  end
end

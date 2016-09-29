require 'rails_helper'

RSpec.describe "person_phones/edit", type: :view do
  before(:each) do
    @person_phone = assign(:person_phone, PersonPhone.create!(
      :person => nil,
      :phone => nil
    ))
  end

  it "renders the edit person_phone form" do
    render

    assert_select "form[action=?][method=?]", person_phone_path(@person_phone), "post" do

      assert_select "input#person_phone_person_id[name=?]", "person_phone[person_id]"

      assert_select "input#person_phone_phone_id[name=?]", "person_phone[phone_id]"
    end
  end
end

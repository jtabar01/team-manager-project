require 'test_helper'

class PeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get people_url
    assert_response :success
  end

  test "should get new" do
    get new_person_url
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post people_url, params: { person: { addr_city: @person.addr_city, addr_route: @person.addr_route, addr_state: @person.addr_state, addr_zip: @person.addr_zip, bio: @person.bio, birth_date: @person.birth_date, first_name: @person.first_name, gender: @person.gender, height_in_inches: @person.height_in_inches, last_name: @person.last_name, pass_hash: @person.pass_hash, pass_salt: @person.pass_salt, shoe_size: @person.shoe_size, username: @person.username, weight_in_pounds: @person.weight_in_pounds } }
    end

    assert_redirected_to person_url(Person.last)
  end

  test "should show person" do
    get person_url(@person)
    assert_response :success
  end

  test "should get edit" do
    get edit_person_url(@person)
    assert_response :success
  end

  test "should update person" do
    patch person_url(@person), params: { person: { addr_city: @person.addr_city, addr_route: @person.addr_route, addr_state: @person.addr_state, addr_zip: @person.addr_zip, bio: @person.bio, birth_date: @person.birth_date, first_name: @person.first_name, gender: @person.gender, height_in_inches: @person.height_in_inches, last_name: @person.last_name, pass_hash: @person.pass_hash, pass_salt: @person.pass_salt, shoe_size: @person.shoe_size, username: @person.username, weight_in_pounds: @person.weight_in_pounds } }
    assert_redirected_to person_url(@person)
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete person_url(@person)
    end

    assert_redirected_to people_url
  end
end

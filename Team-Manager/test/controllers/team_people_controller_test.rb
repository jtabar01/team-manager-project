require 'test_helper'

class TeamPeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_person = team_people(:one)
  end

  test "should get index" do
    get team_people_url
    assert_response :success
  end

  test "should get new" do
    get new_team_person_url
    assert_response :success
  end

  test "should create team_person" do
    assert_difference('TeamPerson.count') do
      post team_people_url, params: { team_person: { person_id_id: @team_person.person_id_id, team_id_id: @team_person.team_id_id } }
    end

    assert_redirected_to team_person_url(TeamPerson.last)
  end

  test "should show team_person" do
    get team_person_url(@team_person)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_person_url(@team_person)
    assert_response :success
  end

  test "should update team_person" do
    patch team_person_url(@team_person), params: { team_person: { person_id_id: @team_person.person_id_id, team_id_id: @team_person.team_id_id } }
    assert_redirected_to team_person_url(@team_person)
  end

  test "should destroy team_person" do
    assert_difference('TeamPerson.count', -1) do
      delete team_person_url(@team_person)
    end

    assert_redirected_to team_people_url
  end
end

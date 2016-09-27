require 'test_helper'

class OrganizationTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization_team = organization_teams(:one)
  end

  test "should get index" do
    get organization_teams_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_team_url
    assert_response :success
  end

  test "should create organization_team" do
    assert_difference('OrganizationTeam.count') do
      post organization_teams_url, params: { organization_team: { organization_id_id: @organization_team.organization_id_id, team_id_id: @organization_team.team_id_id } }
    end

    assert_redirected_to organization_team_url(OrganizationTeam.last)
  end

  test "should show organization_team" do
    get organization_team_url(@organization_team)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_team_url(@organization_team)
    assert_response :success
  end

  test "should update organization_team" do
    patch organization_team_url(@organization_team), params: { organization_team: { organization_id_id: @organization_team.organization_id_id, team_id_id: @organization_team.team_id_id } }
    assert_redirected_to organization_team_url(@organization_team)
  end

  test "should destroy organization_team" do
    assert_difference('OrganizationTeam.count', -1) do
      delete organization_team_url(@organization_team)
    end

    assert_redirected_to organization_teams_url
  end
end

require 'test_helper'

class PlayerStatisticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player_statistic = player_statistics(:one)
  end

  test "should get index" do
    get player_statistics_url
    assert_response :success
  end

  test "should get new" do
    get new_player_statistic_url
    assert_response :success
  end

  test "should create player_statistic" do
    assert_difference('PlayerStatistic.count') do
      post player_statistics_url, params: { player_statistic: { date_recorded: @player_statistic.date_recorded, player_id_id: @player_statistic.player_id_id, stat_id: @player_statistic.stat_id, statistic_type: @player_statistic.statistic_type, statistic_value: @player_statistic.statistic_value } }
    end

    assert_redirected_to player_statistic_url(PlayerStatistic.last)
  end

  test "should show player_statistic" do
    get player_statistic_url(@player_statistic)
    assert_response :success
  end

  test "should get edit" do
    get edit_player_statistic_url(@player_statistic)
    assert_response :success
  end

  test "should update player_statistic" do
    patch player_statistic_url(@player_statistic), params: { player_statistic: { date_recorded: @player_statistic.date_recorded, player_id_id: @player_statistic.player_id_id, stat_id: @player_statistic.stat_id, statistic_type: @player_statistic.statistic_type, statistic_value: @player_statistic.statistic_value } }
    assert_redirected_to player_statistic_url(@player_statistic)
  end

  test "should destroy player_statistic" do
    assert_difference('PlayerStatistic.count', -1) do
      delete player_statistic_url(@player_statistic)
    end

    assert_redirected_to player_statistics_url
  end
end

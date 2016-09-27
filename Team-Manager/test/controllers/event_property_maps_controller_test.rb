require 'test_helper'

class EventPropertyMapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_property_map = event_property_maps(:one)
  end

  test "should get index" do
    get event_property_maps_url
    assert_response :success
  end

  test "should get new" do
    get new_event_property_map_url
    assert_response :success
  end

  test "should create event_property_map" do
    assert_difference('EventPropertyMap.count') do
      post event_property_maps_url, params: { event_property_map: { event_id_id: @event_property_map.event_id_id, key: @event_property_map.key, value: @event_property_map.value } }
    end

    assert_redirected_to event_property_map_url(EventPropertyMap.last)
  end

  test "should show event_property_map" do
    get event_property_map_url(@event_property_map)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_property_map_url(@event_property_map)
    assert_response :success
  end

  test "should update event_property_map" do
    patch event_property_map_url(@event_property_map), params: { event_property_map: { event_id_id: @event_property_map.event_id_id, key: @event_property_map.key, value: @event_property_map.value } }
    assert_redirected_to event_property_map_url(@event_property_map)
  end

  test "should destroy event_property_map" do
    assert_difference('EventPropertyMap.count', -1) do
      delete event_property_map_url(@event_property_map)
    end

    assert_redirected_to event_property_maps_url
  end
end

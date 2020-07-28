require 'test_helper'

class WarehouseLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @warehouse_location = warehouse_locations(:one)
  end

  test "should get index" do
    get warehouse_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_warehouse_location_url
    assert_response :success
  end

  test "should create warehouse_location" do
    assert_difference('WarehouseLocation.count') do
      post warehouse_locations_url, params: { warehouse_location: { area: @warehouse_location.area, customer_id: @warehouse_location.customer_id, depth: @warehouse_location.depth, height: @warehouse_location.height, kind: @warehouse_location.kind, name: @warehouse_location.name, pallet: @warehouse_location.pallet, type: @warehouse_location.type, volume: @warehouse_location.volume, warehouse_id: @warehouse_location.warehouse_id, width: @warehouse_location.width } }
    end

    assert_redirected_to warehouse_location_url(WarehouseLocation.last)
  end

  test "should show warehouse_location" do
    get warehouse_location_url(@warehouse_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_warehouse_location_url(@warehouse_location)
    assert_response :success
  end

  test "should update warehouse_location" do
    patch warehouse_location_url(@warehouse_location), params: { warehouse_location: { area: @warehouse_location.area, customer_id: @warehouse_location.customer_id, depth: @warehouse_location.depth, height: @warehouse_location.height, kind: @warehouse_location.kind, name: @warehouse_location.name, pallet: @warehouse_location.pallet, type: @warehouse_location.type, volume: @warehouse_location.volume, warehouse_id: @warehouse_location.warehouse_id, width: @warehouse_location.width } }
    assert_redirected_to warehouse_location_url(@warehouse_location)
  end

  test "should destroy warehouse_location" do
    assert_difference('WarehouseLocation.count', -1) do
      delete warehouse_location_url(@warehouse_location)
    end

    assert_redirected_to warehouse_locations_url
  end
end

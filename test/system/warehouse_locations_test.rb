require "application_system_test_case"

class WarehouseLocationsTest < ApplicationSystemTestCase
  setup do
    @warehouse_location = warehouse_locations(:one)
  end

  test "visiting the index" do
    visit warehouse_locations_url
    assert_selector "h1", text: "Warehouse Locations"
  end

  test "creating a Warehouse location" do
    visit warehouse_locations_url
    click_on "New Warehouse Location"

    fill_in "Area", with: @warehouse_location.area
    fill_in "Customer", with: @warehouse_location.customer_id
    fill_in "Depth", with: @warehouse_location.depth
    fill_in "Height", with: @warehouse_location.height
    fill_in "Kind", with: @warehouse_location.kind
    fill_in "Name", with: @warehouse_location.name
    fill_in "Pallet", with: @warehouse_location.pallet
    fill_in "Type", with: @warehouse_location.type
    fill_in "Volume", with: @warehouse_location.volume
    fill_in "Warehouse", with: @warehouse_location.warehouse_id
    fill_in "Width", with: @warehouse_location.width
    click_on "Create Warehouse location"

    assert_text "Warehouse location was successfully created"
    click_on "Back"
  end

  test "updating a Warehouse location" do
    visit warehouse_locations_url
    click_on "Edit", match: :first

    fill_in "Area", with: @warehouse_location.area
    fill_in "Customer", with: @warehouse_location.customer_id
    fill_in "Depth", with: @warehouse_location.depth
    fill_in "Height", with: @warehouse_location.height
    fill_in "Kind", with: @warehouse_location.kind
    fill_in "Name", with: @warehouse_location.name
    fill_in "Pallet", with: @warehouse_location.pallet
    fill_in "Type", with: @warehouse_location.type
    fill_in "Volume", with: @warehouse_location.volume
    fill_in "Warehouse", with: @warehouse_location.warehouse_id
    fill_in "Width", with: @warehouse_location.width
    click_on "Update Warehouse location"

    assert_text "Warehouse location was successfully updated"
    click_on "Back"
  end

  test "destroying a Warehouse location" do
    visit warehouse_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Warehouse location was successfully destroyed"
  end
end

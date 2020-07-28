require "application_system_test_case"

class StocksTest < ApplicationSystemTestCase
  setup do
    @stock = stocks(:one)
  end

  test "visiting the index" do
    visit stocks_url
    assert_selector "h1", text: "Stocks"
  end

  test "creating a Stock" do
    visit stocks_url
    click_on "New Stock"

    fill_in "Blocked quantity", with: @stock.blocked_quantity
    fill_in "Incoming quantity", with: @stock.incoming_quantity
    fill_in "Lot code", with: @stock.lot_code
    fill_in "Lot elaboration date", with: @stock.lot_elaboration_date
    fill_in "Lot expiration date", with: @stock.lot_expiration_date
    fill_in "Outgoing quantity", with: @stock.outgoing_quantity
    fill_in "Product", with: @stock.product_id
    fill_in "Quantity", with: @stock.quantity
    fill_in "Warehouse location", with: @stock.warehouse_location_id
    click_on "Create Stock"

    assert_text "Stock was successfully created"
    click_on "Back"
  end

  test "updating a Stock" do
    visit stocks_url
    click_on "Edit", match: :first

    fill_in "Blocked quantity", with: @stock.blocked_quantity
    fill_in "Incoming quantity", with: @stock.incoming_quantity
    fill_in "Lot code", with: @stock.lot_code
    fill_in "Lot elaboration date", with: @stock.lot_elaboration_date
    fill_in "Lot expiration date", with: @stock.lot_expiration_date
    fill_in "Outgoing quantity", with: @stock.outgoing_quantity
    fill_in "Product", with: @stock.product_id
    fill_in "Quantity", with: @stock.quantity
    fill_in "Warehouse location", with: @stock.warehouse_location_id
    click_on "Update Stock"

    assert_text "Stock was successfully updated"
    click_on "Back"
  end

  test "destroying a Stock" do
    visit stocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stock was successfully destroyed"
  end
end

require "application_system_test_case"

class DeliveredOrdersTest < ApplicationSystemTestCase
  setup do
    @delivered_order = delivered_orders(:one)
  end

  test "visiting the index" do
    visit delivered_orders_url
    assert_selector "h1", text: "Delivered Orders"
  end

  test "creating a Delivered order" do
    visit delivered_orders_url
    click_on "New Delivered Order"

    fill_in "Aditional order backup document", with: @delivered_order.aditional_order_backup_document
    fill_in "Customer client", with: @delivered_order.customer_client_id
    fill_in "Customer", with: @delivered_order.customer_id
    fill_in "Customer visit date", with: @delivered_order.customer_visit_date
    fill_in "Delivery aditional backup document", with: @delivered_order.delivery_aditional_backup_document
    fill_in "Delivery backup document", with: @delivered_order.delivery_backup_document
    fill_in "Delivery number", with: @delivered_order.delivery_number
    fill_in "Delivery observation", with: @delivered_order.delivery_observation
    fill_in "Delivery route number", with: @delivered_order.delivery_route_number
    fill_in "Digitation date", with: @delivered_order.digitation_date
    fill_in "Distribution center out date", with: @delivered_order.distribution_center_out_date
    fill_in "Order backup document", with: @delivered_order.order_backup_document
    fill_in "Order number", with: @delivered_order.order_number
    fill_in "Order observation", with: @delivered_order.order_observation
    fill_in "Order programmed date", with: @delivered_order.order_programmed_date
    fill_in "Picking order number", with: @delivered_order.picking_order_number
    fill_in "Warehouse", with: @delivered_order.warehouse_id
    click_on "Create Delivered order"

    assert_text "Delivered order was successfully created"
    click_on "Back"
  end

  test "updating a Delivered order" do
    visit delivered_orders_url
    click_on "Edit", match: :first

    fill_in "Aditional order backup document", with: @delivered_order.aditional_order_backup_document
    fill_in "Customer client", with: @delivered_order.customer_client_id
    fill_in "Customer", with: @delivered_order.customer_id
    fill_in "Customer visit date", with: @delivered_order.customer_visit_date
    fill_in "Delivery aditional backup document", with: @delivered_order.delivery_aditional_backup_document
    fill_in "Delivery backup document", with: @delivered_order.delivery_backup_document
    fill_in "Delivery number", with: @delivered_order.delivery_number
    fill_in "Delivery observation", with: @delivered_order.delivery_observation
    fill_in "Delivery route number", with: @delivered_order.delivery_route_number
    fill_in "Digitation date", with: @delivered_order.digitation_date
    fill_in "Distribution center out date", with: @delivered_order.distribution_center_out_date
    fill_in "Order backup document", with: @delivered_order.order_backup_document
    fill_in "Order number", with: @delivered_order.order_number
    fill_in "Order observation", with: @delivered_order.order_observation
    fill_in "Order programmed date", with: @delivered_order.order_programmed_date
    fill_in "Picking order number", with: @delivered_order.picking_order_number
    fill_in "Warehouse", with: @delivered_order.warehouse_id
    click_on "Update Delivered order"

    assert_text "Delivered order was successfully updated"
    click_on "Back"
  end

  test "destroying a Delivered order" do
    visit delivered_orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Delivered order was successfully destroyed"
  end
end

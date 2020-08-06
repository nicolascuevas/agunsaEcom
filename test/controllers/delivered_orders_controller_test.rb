require 'test_helper'

class DeliveredOrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivered_order = delivered_orders(:one)
  end

  test "should get index" do
    get delivered_orders_url
    assert_response :success
  end

  test "should get new" do
    get new_delivered_order_url
    assert_response :success
  end

  test "should create delivered_order" do
    assert_difference('DeliveredOrder.count') do
      post delivered_orders_url, params: { delivered_order: { aditional_order_backup_document: @delivered_order.aditional_order_backup_document, customer_client_id: @delivered_order.customer_client_id, customer_id: @delivered_order.customer_id, customer_visit_date: @delivered_order.customer_visit_date, delivery_aditional_backup_document: @delivered_order.delivery_aditional_backup_document, delivery_backup_document: @delivered_order.delivery_backup_document, delivery_number: @delivered_order.delivery_number, delivery_observation: @delivered_order.delivery_observation, delivery_route_number: @delivered_order.delivery_route_number, digitation_date: @delivered_order.digitation_date, distribution_center_out_date: @delivered_order.distribution_center_out_date, order_backup_document: @delivered_order.order_backup_document, order_number: @delivered_order.order_number, order_observation: @delivered_order.order_observation, order_programmed_date: @delivered_order.order_programmed_date, picking_order_number: @delivered_order.picking_order_number, warehouse_id: @delivered_order.warehouse_id } }
    end

    assert_redirected_to delivered_order_url(DeliveredOrder.last)
  end

  test "should show delivered_order" do
    get delivered_order_url(@delivered_order)
    assert_response :success
  end

  test "should get edit" do
    get edit_delivered_order_url(@delivered_order)
    assert_response :success
  end

  test "should update delivered_order" do
    patch delivered_order_url(@delivered_order), params: { delivered_order: { aditional_order_backup_document: @delivered_order.aditional_order_backup_document, customer_client_id: @delivered_order.customer_client_id, customer_id: @delivered_order.customer_id, customer_visit_date: @delivered_order.customer_visit_date, delivery_aditional_backup_document: @delivered_order.delivery_aditional_backup_document, delivery_backup_document: @delivered_order.delivery_backup_document, delivery_number: @delivered_order.delivery_number, delivery_observation: @delivered_order.delivery_observation, delivery_route_number: @delivered_order.delivery_route_number, digitation_date: @delivered_order.digitation_date, distribution_center_out_date: @delivered_order.distribution_center_out_date, order_backup_document: @delivered_order.order_backup_document, order_number: @delivered_order.order_number, order_observation: @delivered_order.order_observation, order_programmed_date: @delivered_order.order_programmed_date, picking_order_number: @delivered_order.picking_order_number, warehouse_id: @delivered_order.warehouse_id } }
    assert_redirected_to delivered_order_url(@delivered_order)
  end

  test "should destroy delivered_order" do
    assert_difference('DeliveredOrder.count', -1) do
      delete delivered_order_url(@delivered_order)
    end

    assert_redirected_to delivered_orders_url
  end
end

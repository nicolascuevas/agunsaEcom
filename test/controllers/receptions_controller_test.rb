require 'test_helper'

class ReceptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reception = receptions(:one)
  end

  test "should get index" do
    get receptions_url
    assert_response :success
  end

  test "should get new" do
    get new_reception_url
    assert_response :success
  end

  test "should create reception" do
    assert_difference('Reception.count') do
      post receptions_url, params: { reception: { container_seal: @reception.container_seal, ctnr_code: @reception.ctnr_code, customer_id: @reception.customer_id, customer_reference_document: @reception.customer_reference_document, digitation_date: @reception.digitation_date, finish_unload: @reception.finish_unload, guia_aga_o_fa: @reception.guia_aga_o_fa, origin: @reception.origin, recepcion_backup_document: @reception.recepcion_backup_document, recepcion_order_date: @reception.recepcion_order_date, recepcion_order_number: @reception.recepcion_order_number, reception_number: @reception.reception_number, reception_observation: @reception.reception_observation, reception_order_backup_document: @reception.reception_order_backup_document, reception_order_observation: @reception.reception_order_observation, rrp_number: @reception.rrp_number, rrp_observation: @reception.rrp_observation, start_unload: @reception.start_unload, warehouse_id: @reception.warehouse_id } }
    end

    assert_redirected_to reception_url(Reception.last)
  end

  test "should show reception" do
    get reception_url(@reception)
    assert_response :success
  end

  test "should get edit" do
    get edit_reception_url(@reception)
    assert_response :success
  end

  test "should update reception" do
    patch reception_url(@reception), params: { reception: { container_seal: @reception.container_seal, ctnr_code: @reception.ctnr_code, customer_id: @reception.customer_id, customer_reference_document: @reception.customer_reference_document, digitation_date: @reception.digitation_date, finish_unload: @reception.finish_unload, guia_aga_o_fa: @reception.guia_aga_o_fa, origin: @reception.origin, recepcion_backup_document: @reception.recepcion_backup_document, recepcion_order_date: @reception.recepcion_order_date, recepcion_order_number: @reception.recepcion_order_number, reception_number: @reception.reception_number, reception_observation: @reception.reception_observation, reception_order_backup_document: @reception.reception_order_backup_document, reception_order_observation: @reception.reception_order_observation, rrp_number: @reception.rrp_number, rrp_observation: @reception.rrp_observation, start_unload: @reception.start_unload, warehouse_id: @reception.warehouse_id } }
    assert_redirected_to reception_url(@reception)
  end

  test "should destroy reception" do
    assert_difference('Reception.count', -1) do
      delete reception_url(@reception)
    end

    assert_redirected_to receptions_url
  end
end

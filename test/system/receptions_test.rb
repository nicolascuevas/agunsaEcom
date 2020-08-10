require "application_system_test_case"

class ReceptionsTest < ApplicationSystemTestCase
  setup do
    @reception = receptions(:one)
  end

  test "visiting the index" do
    visit receptions_url
    assert_selector "h1", text: "Receptions"
  end

  test "creating a Reception" do
    visit receptions_url
    click_on "New Reception"

    fill_in "Container seal", with: @reception.container_seal
    fill_in "Ctnr code", with: @reception.ctnr_code
    fill_in "Customer", with: @reception.customer_id
    fill_in "Customer reference document", with: @reception.customer_reference_document
    fill_in "Digitation date", with: @reception.digitation_date
    fill_in "Finish unload", with: @reception.finish_unload
    fill_in "Guia aga o fa", with: @reception.guia_aga_o_fa
    fill_in "Origin", with: @reception.origin
    fill_in "Recepcion backup document", with: @reception.recepcion_backup_document
    fill_in "Recepcion order date", with: @reception.recepcion_order_date
    fill_in "Recepcion order number", with: @reception.recepcion_order_number
    fill_in "Reception number", with: @reception.reception_number
    fill_in "Reception observation", with: @reception.reception_observation
    fill_in "Reception order backup document", with: @reception.reception_order_backup_document
    fill_in "Reception order observation", with: @reception.reception_order_observation
    fill_in "Rrp number", with: @reception.rrp_number
    fill_in "Rrp observation", with: @reception.rrp_observation
    fill_in "Start unload", with: @reception.start_unload
    fill_in "Warehouse", with: @reception.warehouse_id
    click_on "Create Reception"

    assert_text "Reception was successfully created"
    click_on "Back"
  end

  test "updating a Reception" do
    visit receptions_url
    click_on "Edit", match: :first

    fill_in "Container seal", with: @reception.container_seal
    fill_in "Ctnr code", with: @reception.ctnr_code
    fill_in "Customer", with: @reception.customer_id
    fill_in "Customer reference document", with: @reception.customer_reference_document
    fill_in "Digitation date", with: @reception.digitation_date
    fill_in "Finish unload", with: @reception.finish_unload
    fill_in "Guia aga o fa", with: @reception.guia_aga_o_fa
    fill_in "Origin", with: @reception.origin
    fill_in "Recepcion backup document", with: @reception.recepcion_backup_document
    fill_in "Recepcion order date", with: @reception.recepcion_order_date
    fill_in "Recepcion order number", with: @reception.recepcion_order_number
    fill_in "Reception number", with: @reception.reception_number
    fill_in "Reception observation", with: @reception.reception_observation
    fill_in "Reception order backup document", with: @reception.reception_order_backup_document
    fill_in "Reception order observation", with: @reception.reception_order_observation
    fill_in "Rrp number", with: @reception.rrp_number
    fill_in "Rrp observation", with: @reception.rrp_observation
    fill_in "Start unload", with: @reception.start_unload
    fill_in "Warehouse", with: @reception.warehouse_id
    click_on "Update Reception"

    assert_text "Reception was successfully updated"
    click_on "Back"
  end

  test "destroying a Reception" do
    visit receptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reception was successfully destroyed"
  end
end

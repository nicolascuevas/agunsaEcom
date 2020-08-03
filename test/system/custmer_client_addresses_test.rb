require "application_system_test_case"

class CustmerClientAddressesTest < ApplicationSystemTestCase
  setup do
    @custmer_client_address = custmer_client_addresses(:one)
  end

  test "visiting the index" do
    visit custmer_client_addresses_url
    assert_selector "h1", text: "Custmer Client Addresses"
  end

  test "creating a Custmer client address" do
    visit custmer_client_addresses_url
    click_on "New Custmer Client Address"

    fill_in "Address detail", with: @custmer_client_address.address_detail
    fill_in "Commune", with: @custmer_client_address.commune_id
    fill_in "Customer client", with: @custmer_client_address.customer_client_id
    fill_in "Lat", with: @custmer_client_address.lat
    fill_in "Long", with: @custmer_client_address.long
    fill_in "Number", with: @custmer_client_address.number
    fill_in "Street", with: @custmer_client_address.street
    click_on "Create Custmer client address"

    assert_text "Custmer client address was successfully created"
    click_on "Back"
  end

  test "updating a Custmer client address" do
    visit custmer_client_addresses_url
    click_on "Edit", match: :first

    fill_in "Address detail", with: @custmer_client_address.address_detail
    fill_in "Commune", with: @custmer_client_address.commune_id
    fill_in "Customer client", with: @custmer_client_address.customer_client_id
    fill_in "Lat", with: @custmer_client_address.lat
    fill_in "Long", with: @custmer_client_address.long
    fill_in "Number", with: @custmer_client_address.number
    fill_in "Street", with: @custmer_client_address.street
    click_on "Update Custmer client address"

    assert_text "Custmer client address was successfully updated"
    click_on "Back"
  end

  test "destroying a Custmer client address" do
    visit custmer_client_addresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Custmer client address was successfully destroyed"
  end
end

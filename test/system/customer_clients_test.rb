require "application_system_test_case"

class CustomerClientsTest < ApplicationSystemTestCase
  setup do
    @customer_client = customer_clients(:one)
  end

  test "visiting the index" do
    visit customer_clients_url
    assert_selector "h1", text: "Customer Clients"
  end

  test "creating a Customer client" do
    visit customer_clients_url
    click_on "New Customer Client"

    fill_in "Customer", with: @customer_client.customer_id
    fill_in "Email", with: @customer_client.email
    fill_in "Identifier", with: @customer_client.identifier
    fill_in "Last name", with: @customer_client.last_name
    fill_in "Name", with: @customer_client.name
    fill_in "Phone", with: @customer_client.phone
    click_on "Create Customer client"

    assert_text "Customer client was successfully created"
    click_on "Back"
  end

  test "updating a Customer client" do
    visit customer_clients_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @customer_client.customer_id
    fill_in "Email", with: @customer_client.email
    fill_in "Identifier", with: @customer_client.identifier
    fill_in "Last name", with: @customer_client.last_name
    fill_in "Name", with: @customer_client.name
    fill_in "Phone", with: @customer_client.phone
    click_on "Update Customer client"

    assert_text "Customer client was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer client" do
    visit customer_clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer client was successfully destroyed"
  end
end

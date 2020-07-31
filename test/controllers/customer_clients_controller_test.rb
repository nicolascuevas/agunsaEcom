require 'test_helper'

class CustomerClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_client = customer_clients(:one)
  end

  test "should get index" do
    get customer_clients_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_client_url
    assert_response :success
  end

  test "should create customer_client" do
    assert_difference('CustomerClient.count') do
      post customer_clients_url, params: { customer_client: { customer_id: @customer_client.customer_id, email: @customer_client.email, identifier: @customer_client.identifier, last_name: @customer_client.last_name, name: @customer_client.name, phone: @customer_client.phone } }
    end

    assert_redirected_to customer_client_url(CustomerClient.last)
  end

  test "should show customer_client" do
    get customer_client_url(@customer_client)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_client_url(@customer_client)
    assert_response :success
  end

  test "should update customer_client" do
    patch customer_client_url(@customer_client), params: { customer_client: { customer_id: @customer_client.customer_id, email: @customer_client.email, identifier: @customer_client.identifier, last_name: @customer_client.last_name, name: @customer_client.name, phone: @customer_client.phone } }
    assert_redirected_to customer_client_url(@customer_client)
  end

  test "should destroy customer_client" do
    assert_difference('CustomerClient.count', -1) do
      delete customer_client_url(@customer_client)
    end

    assert_redirected_to customer_clients_url
  end
end

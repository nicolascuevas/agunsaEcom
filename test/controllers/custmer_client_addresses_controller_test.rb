require 'test_helper'

class CustmerClientAddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custmer_client_address = custmer_client_addresses(:one)
  end

  test "should get index" do
    get custmer_client_addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_custmer_client_address_url
    assert_response :success
  end

  test "should create custmer_client_address" do
    assert_difference('CustmerClientAddress.count') do
      post custmer_client_addresses_url, params: { custmer_client_address: { address_detail: @custmer_client_address.address_detail, commune_id: @custmer_client_address.commune_id, customer_client_id: @custmer_client_address.customer_client_id, lat: @custmer_client_address.lat, long: @custmer_client_address.long, number: @custmer_client_address.number, street: @custmer_client_address.street } }
    end

    assert_redirected_to custmer_client_address_url(CustmerClientAddress.last)
  end

  test "should show custmer_client_address" do
    get custmer_client_address_url(@custmer_client_address)
    assert_response :success
  end

  test "should get edit" do
    get edit_custmer_client_address_url(@custmer_client_address)
    assert_response :success
  end

  test "should update custmer_client_address" do
    patch custmer_client_address_url(@custmer_client_address), params: { custmer_client_address: { address_detail: @custmer_client_address.address_detail, commune_id: @custmer_client_address.commune_id, customer_client_id: @custmer_client_address.customer_client_id, lat: @custmer_client_address.lat, long: @custmer_client_address.long, number: @custmer_client_address.number, street: @custmer_client_address.street } }
    assert_redirected_to custmer_client_address_url(@custmer_client_address)
  end

  test "should destroy custmer_client_address" do
    assert_difference('CustmerClientAddress.count', -1) do
      delete custmer_client_address_url(@custmer_client_address)
    end

    assert_redirected_to custmer_client_addresses_url
  end
end

require 'test_helper'

class CommunesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commune = communes(:one)
  end

  test "should get index" do
    get communes_url
    assert_response :success
  end

  test "should get new" do
    get new_commune_url
    assert_response :success
  end

  test "should create commune" do
    assert_difference('Commune.count') do
      post communes_url, params: { commune: { name: @commune.name, region_id: @commune.region_id, sil_code: @commune.sil_code } }
    end

    assert_redirected_to commune_url(Commune.last)
  end

  test "should show commune" do
    get commune_url(@commune)
    assert_response :success
  end

  test "should get edit" do
    get edit_commune_url(@commune)
    assert_response :success
  end

  test "should update commune" do
    patch commune_url(@commune), params: { commune: { name: @commune.name, region_id: @commune.region_id, sil_code: @commune.sil_code } }
    assert_redirected_to commune_url(@commune)
  end

  test "should destroy commune" do
    assert_difference('Commune.count', -1) do
      delete commune_url(@commune)
    end

    assert_redirected_to communes_url
  end
end

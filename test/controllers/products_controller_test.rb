require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { boxes_per_pallet: @product.boxes_per_pallet, boxes_per_pallet_floor: @product.boxes_per_pallet_floor, client_id: @product.client_id, depth: @product.depth, family: @product.family, height: @product.height, is_expire: @product.is_expire, liters: @product.liters, name: @product.name, product_code: @product.product_code, state: @product.state, sub_family: @product.sub_family, super_family: @product.super_family, units_per_box: @product.units_per_box, weight: @product.weight, width: @product.width } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { boxes_per_pallet: @product.boxes_per_pallet, boxes_per_pallet_floor: @product.boxes_per_pallet_floor, client_id: @product.client_id, depth: @product.depth, family: @product.family, height: @product.height, is_expire: @product.is_expire, liters: @product.liters, name: @product.name, product_code: @product.product_code, state: @product.state, sub_family: @product.sub_family, super_family: @product.super_family, units_per_box: @product.units_per_box, weight: @product.weight, width: @product.width } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end

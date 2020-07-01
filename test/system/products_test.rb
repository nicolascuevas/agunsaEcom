require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "creating a Product" do
    visit products_url
    click_on "New Product"

    fill_in "Boxes per pallet", with: @product.boxes_per_pallet
    fill_in "Boxes per pallet floor", with: @product.boxes_per_pallet_floor
    fill_in "Client", with: @product.client_id
    fill_in "Depth", with: @product.depth
    fill_in "Family", with: @product.family
    fill_in "Height", with: @product.height
    check "Is expire" if @product.is_expire
    fill_in "Liters", with: @product.liters
    fill_in "Name", with: @product.name
    fill_in "Product code", with: @product.product_code
    fill_in "State", with: @product.state
    fill_in "Sub family", with: @product.sub_family
    fill_in "Super family", with: @product.super_family
    fill_in "Units per box", with: @product.units_per_box
    fill_in "Weight", with: @product.weight
    fill_in "Width", with: @product.width
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "updating a Product" do
    visit products_url
    click_on "Edit", match: :first

    fill_in "Boxes per pallet", with: @product.boxes_per_pallet
    fill_in "Boxes per pallet floor", with: @product.boxes_per_pallet_floor
    fill_in "Client", with: @product.client_id
    fill_in "Depth", with: @product.depth
    fill_in "Family", with: @product.family
    fill_in "Height", with: @product.height
    check "Is expire" if @product.is_expire
    fill_in "Liters", with: @product.liters
    fill_in "Name", with: @product.name
    fill_in "Product code", with: @product.product_code
    fill_in "State", with: @product.state
    fill_in "Sub family", with: @product.sub_family
    fill_in "Super family", with: @product.super_family
    fill_in "Units per box", with: @product.units_per_box
    fill_in "Weight", with: @product.weight
    fill_in "Width", with: @product.width
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "destroying a Product" do
    visit products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product was successfully destroyed"
  end
end

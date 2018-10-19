require 'test_helper'

class GategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gategory = gategories(:one)
  end

  test "should get index" do
    get gategories_url
    assert_response :success
  end

  test "should get new" do
    get new_gategory_url
    assert_response :success
  end

  test "should create gategory" do
    assert_difference('Gategory.count') do
      post gategories_url, params: { gategory: { description: @gategory.description, title: @gategory.title } }
    end

    assert_redirected_to gategory_url(Gategory.last)
  end

  test "should show gategory" do
    get gategory_url(@gategory)
    assert_response :success
  end

  test "should get edit" do
    get edit_gategory_url(@gategory)
    assert_response :success
  end

  test "should update gategory" do
    patch gategory_url(@gategory), params: { gategory: { description: @gategory.description, title: @gategory.title } }
    assert_redirected_to gategory_url(@gategory)
  end

  test "should destroy gategory" do
    assert_difference('Gategory.count', -1) do
      delete gategory_url(@gategory)
    end

    assert_redirected_to gategories_url
  end
end

require 'test_helper'

class Seller::HousesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seller_houses_index_url
    assert_response :success
  end

  test "should get show" do
    get seller_houses_show_url
    assert_response :success
  end

  test "should get new" do
    get seller_houses_new_url
    assert_response :success
  end

  test "should get create" do
    get seller_houses_create_url
    assert_response :success
  end

  test "should get edit" do
    get seller_houses_edit_url
    assert_response :success
  end

  test "should get update" do
    get seller_houses_update_url
    assert_response :success
  end

  test "should get destroy" do
    get seller_houses_destroy_url
    assert_response :success
  end

end

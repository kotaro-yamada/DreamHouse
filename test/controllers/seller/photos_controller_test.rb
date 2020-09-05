require 'test_helper'

class Seller::PhotosControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get seller_photos_create_url
    assert_response :success
  end

  test "should get destroy" do
    get seller_photos_destroy_url
    assert_response :success
  end

end

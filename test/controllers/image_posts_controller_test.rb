require 'test_helper'

class ImagePostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get image_posts_index_url
    assert_response :success
  end

  test "should get new" do
    get image_posts_new_url
    assert_response :success
  end

  test "should get create" do
    get image_posts_create_url
    assert_response :success
  end

  test "should get edit" do
    get image_posts_edit_url
    assert_response :success
  end

  test "should get update" do
    get image_posts_update_url
    assert_response :success
  end

  test "should get show" do
    get image_posts_show_url
    assert_response :success
  end

end

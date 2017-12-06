require 'test_helper'

class AllPetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get all_pets_index_url
    assert_response :success
  end

end

require 'test_helper'

class HomeControllerTest < ActionController::TestCase
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
=======
  test "should get index" do
    get :index
    assert_response :success
  end

>>>>>>> f315628a197f98f8ecb106cb3b6cef5c0038e1b5
end

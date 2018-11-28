require 'test_helper'

class EnrollmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get inde" do
    get enrollments_inde_url
    assert_response :success
  end

  test "should get new" do
    get enrollments_new_url
    assert_response :success
  end

end

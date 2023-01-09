require "test_helper"

class CourseStudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get course_students_create_url
    assert_response :success
  end

  test "should get destroy" do
    get course_students_destroy_url
    assert_response :success
  end
end

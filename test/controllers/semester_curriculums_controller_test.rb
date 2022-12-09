require 'test_helper'

class SemesterCurriculumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @semester_curriculum = semester_curriculums(:one)
  end

  test "should get index" do
    get semester_curriculums_url
    assert_response :success
  end

  test "should get new" do
    get new_semester_curriculum_url
    assert_response :success
  end

  test "should create semester_curriculum" do
    assert_difference('SemesterCurriculum.count') do
      post semester_curriculums_url, params: { semester_curriculum: { curriculum_id: @semester_curriculum.curriculum_id, grade: @semester_curriculum.grade, semester_id: @semester_curriculum.semester_id, student_id: @semester_curriculum.student_id } }
    end

    assert_redirected_to semester_curriculum_url(SemesterCurriculum.last)
  end

  test "should show semester_curriculum" do
    get semester_curriculum_url(@semester_curriculum)
    assert_response :success
  end

  test "should get edit" do
    get edit_semester_curriculum_url(@semester_curriculum)
    assert_response :success
  end

  test "should update semester_curriculum" do
    patch semester_curriculum_url(@semester_curriculum), params: { semester_curriculum: { curriculum_id: @semester_curriculum.curriculum_id, grade: @semester_curriculum.grade, semester_id: @semester_curriculum.semester_id, student_id: @semester_curriculum.student_id } }
    assert_redirected_to semester_curriculum_url(@semester_curriculum)
  end

  test "should destroy semester_curriculum" do
    assert_difference('SemesterCurriculum.count', -1) do
      delete semester_curriculum_url(@semester_curriculum)
    end

    assert_redirected_to semester_curriculums_url
  end
end

require "application_system_test_case"

class SemesterCurriculumsTest < ApplicationSystemTestCase
  setup do
    @semester_curriculum = semester_curriculums(:one)
  end

  test "visiting the index" do
    visit semester_curriculums_url
    assert_selector "h1", text: "Semester Curriculums"
  end

  test "creating a Semester curriculum" do
    visit semester_curriculums_url
    click_on "New Semester Curriculum"

    fill_in "Curriculum", with: @semester_curriculum.curriculum_id
    fill_in "Grade", with: @semester_curriculum.grade
    fill_in "References", with: @semester_curriculum.references
    fill_in "Semester", with: @semester_curriculum.semester_id
    click_on "Create Semester curriculum"

    assert_text "Semester curriculum was successfully created"
    click_on "Back"
  end

  test "updating a Semester curriculum" do
    visit semester_curriculums_url
    click_on "Edit", match: :first

    fill_in "Curriculum", with: @semester_curriculum.curriculum_id
    fill_in "Grade", with: @semester_curriculum.grade
    fill_in "References", with: @semester_curriculum.references
    fill_in "Semester", with: @semester_curriculum.semester_id
    click_on "Update Semester curriculum"

    assert_text "Semester curriculum was successfully updated"
    click_on "Back"
  end

  test "destroying a Semester curriculum" do
    visit semester_curriculums_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Semester curriculum was successfully destroyed"
  end
end

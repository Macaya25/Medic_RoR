require "application_system_test_case"

class MedicalCentersTest < ApplicationSystemTestCase
  setup do
    @medical_center = medical_centers(:one)
  end

  test "visiting the index" do
    visit medical_centers_url
    assert_selector "h1", text: "Medical centers"
  end

  test "should create medical center" do
    visit medical_centers_url
    click_on "New medical center"

    fill_in "Location", with: @medical_center.location
    fill_in "Name", with: @medical_center.name
    click_on "Create Medical center"

    assert_text "Medical center was successfully created"
    click_on "Back"
  end

  test "should update Medical center" do
    visit medical_center_url(@medical_center)
    click_on "Edit this medical center", match: :first

    fill_in "Location", with: @medical_center.location
    fill_in "Name", with: @medical_center.name
    click_on "Update Medical center"

    assert_text "Medical center was successfully updated"
    click_on "Back"
  end

  test "should destroy Medical center" do
    visit medical_center_url(@medical_center)
    click_on "Destroy this medical center", match: :first

    assert_text "Medical center was successfully destroyed"
  end
end

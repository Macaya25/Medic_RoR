require "application_system_test_case"

class MedicalInstitutionsTest < ApplicationSystemTestCase
  setup do
    @medical_institution = medical_institutions(:one)
  end

  test "visiting the index" do
    visit medical_institutions_url
    assert_selector "h1", text: "Medical institutions"
  end

  test "should create medical institution" do
    visit medical_institutions_url
    click_on "New medical institution"

    fill_in "Name", with: @medical_institution.name
    click_on "Create Medical institution"

    assert_text "Medical institution was successfully created"
    click_on "Back"
  end

  test "should update Medical institution" do
    visit medical_institution_url(@medical_institution)
    click_on "Edit this medical institution", match: :first

    fill_in "Name", with: @medical_institution.name
    click_on "Update Medical institution"

    assert_text "Medical institution was successfully updated"
    click_on "Back"
  end

  test "should destroy Medical institution" do
    visit medical_institution_url(@medical_institution)
    click_on "Destroy this medical institution", match: :first

    assert_text "Medical institution was successfully destroyed"
  end
end

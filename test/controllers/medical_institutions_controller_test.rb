require "test_helper"

class MedicalInstitutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medical_institution = medical_institutions(:one)
  end

  test "should get index" do
    get medical_institutions_url
    assert_response :success
  end

  test "should get new" do
    get new_medical_institution_url
    assert_response :success
  end

  test "should create medical_institution" do
    assert_difference("MedicalInstitution.count") do
      post medical_institutions_url, params: { medical_institution: { name: @medical_institution.name } }
    end

    assert_redirected_to medical_institution_url(MedicalInstitution.last)
  end

  test "should show medical_institution" do
    get medical_institution_url(@medical_institution)
    assert_response :success
  end

  test "should get edit" do
    get edit_medical_institution_url(@medical_institution)
    assert_response :success
  end

  test "should update medical_institution" do
    patch medical_institution_url(@medical_institution), params: { medical_institution: { name: @medical_institution.name } }
    assert_redirected_to medical_institution_url(@medical_institution)
  end

  test "should destroy medical_institution" do
    assert_difference("MedicalInstitution.count", -1) do
      delete medical_institution_url(@medical_institution)
    end

    assert_redirected_to medical_institutions_url
  end
end

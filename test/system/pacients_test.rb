require "application_system_test_case"

class PacientsTest < ApplicationSystemTestCase
  setup do
    @pacient = pacients(:one)
  end

  test "visiting the index" do
    visit pacients_url
    assert_selector "h1", text: "Pacients"
  end

  test "should create pacient" do
    visit pacients_url
    click_on "New pacient"

    fill_in "Address", with: @pacient.address
    fill_in "Inf", with: @pacient.inf
    fill_in "Last name", with: @pacient.last_name
    fill_in "Mail", with: @pacient.mail
    fill_in "Name", with: @pacient.name
    fill_in "Telephone", with: @pacient.telephone
    click_on "Create Pacient"

    assert_text "Pacient was successfully created"
    click_on "Back"
  end

  test "should update Pacient" do
    visit pacient_url(@pacient)
    click_on "Edit this pacient", match: :first

    fill_in "Address", with: @pacient.address
    fill_in "Inf", with: @pacient.inf
    fill_in "Last name", with: @pacient.last_name
    fill_in "Mail", with: @pacient.mail
    fill_in "Name", with: @pacient.name
    fill_in "Telephone", with: @pacient.telephone
    click_on "Update Pacient"

    assert_text "Pacient was successfully updated"
    click_on "Back"
  end

  test "should destroy Pacient" do
    visit pacient_url(@pacient)
    click_on "Destroy this pacient", match: :first

    assert_text "Pacient was successfully destroyed"
  end
end

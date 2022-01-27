require "application_system_test_case"

class CalcappsTest < ApplicationSystemTestCase
  setup do
    @calcapp = calcapps(:one)
  end

  test "visiting the index" do
    visit calcapps_url
    assert_selector "h1", text: "Calcapps"
  end

  test "creating a Calcapp" do
    visit calcapps_url
    click_on "New Calcapp"

    fill_in "Name", with: @calcapp.name
    click_on "Create Calcapp"

    assert_text "Calcapp was successfully created"
    click_on "Back"
  end

  test "updating a Calcapp" do
    visit calcapps_url
    click_on "Edit", match: :first

    fill_in "Name", with: @calcapp.name
    click_on "Update Calcapp"

    assert_text "Calcapp was successfully updated"
    click_on "Back"
  end

  test "destroying a Calcapp" do
    visit calcapps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calcapp was successfully destroyed"
  end
end

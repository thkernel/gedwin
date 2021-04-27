require "application_system_test_case"

class GeneralSettingsTest < ApplicationSystemTestCase
  setup do
    @general_setting = general_settings(:one)
  end

  test "visiting the index" do
    visit general_settings_url
    assert_selector "h1", text: "General Settings"
  end

  test "creating a General setting" do
    visit general_settings_url
    click_on "New General Setting"

    click_on "Create General setting"

    assert_text "General setting was successfully created"
    click_on "Back"
  end

  test "updating a General setting" do
    visit general_settings_url
    click_on "Edit", match: :first

    click_on "Update General setting"

    assert_text "General setting was successfully updated"
    click_on "Back"
  end

  test "destroying a General setting" do
    visit general_settings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "General setting was successfully destroyed"
  end
end

require "application_system_test_case"

class RequestCompaniesTest < ApplicationSystemTestCase
  setup do
    @request_company = request_companies(:one)
  end

  test "visiting the index" do
    visit request_companies_url
    assert_selector "h1", text: "Request Companies"
  end

  test "creating a Request company" do
    visit request_companies_url
    click_on "New Request Company"

    fill_in "Company name", with: @request_company.company_name
    fill_in "Request", with: @request_company.request_id
    fill_in "Status", with: @request_company.status
    click_on "Create Request company"

    assert_text "Request company was successfully created"
    click_on "Back"
  end

  test "updating a Request company" do
    visit request_companies_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @request_company.company_name
    fill_in "Request", with: @request_company.request_id
    fill_in "Status", with: @request_company.status
    click_on "Update Request company"

    assert_text "Request company was successfully updated"
    click_on "Back"
  end

  test "destroying a Request company" do
    visit request_companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request company was successfully destroyed"
  end
end

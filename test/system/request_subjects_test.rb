require "application_system_test_case"

class RequestSubjectsTest < ApplicationSystemTestCase
  setup do
    @request_subject = request_subjects(:one)
  end

  test "visiting the index" do
    visit request_subjects_url
    assert_selector "h1", text: "Request Subjects"
  end

  test "creating a Request subject" do
    visit request_subjects_url
    click_on "New Request Subject"

    fill_in "Request", with: @request_subject.request_id
    fill_in "Status", with: @request_subject.status
    fill_in "Subject name", with: @request_subject.subject_name
    click_on "Create Request subject"

    assert_text "Request subject was successfully created"
    click_on "Back"
  end

  test "updating a Request subject" do
    visit request_subjects_url
    click_on "Edit", match: :first

    fill_in "Request", with: @request_subject.request_id
    fill_in "Status", with: @request_subject.status
    fill_in "Subject name", with: @request_subject.subject_name
    click_on "Update Request subject"

    assert_text "Request subject was successfully updated"
    click_on "Back"
  end

  test "destroying a Request subject" do
    visit request_subjects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Request subject was successfully destroyed"
  end
end

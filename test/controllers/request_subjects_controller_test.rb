require 'test_helper'

class RequestSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_subject = request_subjects(:one)
  end

  test "should get index" do
    get request_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_request_subject_url
    assert_response :success
  end

  test "should create request_subject" do
    assert_difference('RequestSubject.count') do
      post request_subjects_url, params: { request_subject: { request_id: @request_subject.request_id, status: @request_subject.status, subject_name: @request_subject.subject_name } }
    end

    assert_redirected_to request_subject_url(RequestSubject.last)
  end

  test "should show request_subject" do
    get request_subject_url(@request_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_subject_url(@request_subject)
    assert_response :success
  end

  test "should update request_subject" do
    patch request_subject_url(@request_subject), params: { request_subject: { request_id: @request_subject.request_id, status: @request_subject.status, subject_name: @request_subject.subject_name } }
    assert_redirected_to request_subject_url(@request_subject)
  end

  test "should destroy request_subject" do
    assert_difference('RequestSubject.count', -1) do
      delete request_subject_url(@request_subject)
    end

    assert_redirected_to request_subjects_url
  end
end

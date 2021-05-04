require 'test_helper'

class RequestCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @request_company = request_companies(:one)
  end

  test "should get index" do
    get request_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_request_company_url
    assert_response :success
  end

  test "should create request_company" do
    assert_difference('RequestCompany.count') do
      post request_companies_url, params: { request_company: { company_name: @request_company.company_name, request_id: @request_company.request_id, status: @request_company.status } }
    end

    assert_redirected_to request_company_url(RequestCompany.last)
  end

  test "should show request_company" do
    get request_company_url(@request_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_request_company_url(@request_company)
    assert_response :success
  end

  test "should update request_company" do
    patch request_company_url(@request_company), params: { request_company: { company_name: @request_company.company_name, request_id: @request_company.request_id, status: @request_company.status } }
    assert_redirected_to request_company_url(@request_company)
  end

  test "should destroy request_company" do
    assert_difference('RequestCompany.count', -1) do
      delete request_company_url(@request_company)
    end

    assert_redirected_to request_companies_url
  end
end

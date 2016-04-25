require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get companies_url
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post companies_url, params: { company: { address: @company.address, addtional_info: @company.addtional_info, customer_id: @company.customer_id, email: @company.email, name: @company.name, phone: @company.phone, website: @company.website } }
    end

    assert_response 201
  end

  test "should show company" do
    get company_url(@company)
    assert_response :success
  end

  test "should update company" do
    patch company_url(@company), params: { company: { address: @company.address, addtional_info: @company.addtional_info, customer_id: @company.customer_id, email: @company.email, name: @company.name, phone: @company.phone, website: @company.website } }
    assert_response 200
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete company_url(@company)
    end

    assert_response 204
  end
end

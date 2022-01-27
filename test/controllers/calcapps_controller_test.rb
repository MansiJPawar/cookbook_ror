require 'test_helper'

class CalcappsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calcapp = calcapps(:one)
  end

  test "should get index" do
    get calcapps_url
    assert_response :success
  end

  test "should get new" do
    get new_calcapp_url
    assert_response :success
  end

  test "should create calcapp" do
    assert_difference('Calcapp.count') do
      post calcapps_url, params: { calcapp: { name: @calcapp.name } }
    end

    assert_redirected_to calcapp_url(Calcapp.last)
  end

  test "should show calcapp" do
    get calcapp_url(@calcapp)
    assert_response :success
  end

  test "should get edit" do
    get edit_calcapp_url(@calcapp)
    assert_response :success
  end

  test "should update calcapp" do
    patch calcapp_url(@calcapp), params: { calcapp: { name: @calcapp.name } }
    assert_redirected_to calcapp_url(@calcapp)
  end

  test "should destroy calcapp" do
    assert_difference('Calcapp.count', -1) do
      delete calcapp_url(@calcapp)
    end

    assert_redirected_to calcapps_url
  end
end

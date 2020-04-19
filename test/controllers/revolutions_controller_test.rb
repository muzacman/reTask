require 'test_helper'

class RevolutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @revolution = revolutions(:one)
  end

  test "should get index" do
    get revolutions_url
    assert_response :success
  end

  test "should get new" do
    get new_revolution_url
    assert_response :success
  end

  test "should create revolution" do
    assert_difference('Revolution.count') do
      post revolutions_url, params: { revolution: { repeater_vals: @revolution.repeater_vals, status: @revolution.status, total_seconds: @revolution.total_seconds } }
    end

    assert_redirected_to revolution_url(Revolution.last)
  end

  test "should show revolution" do
    get revolution_url(@revolution)
    assert_response :success
  end

  test "should get edit" do
    get edit_revolution_url(@revolution)
    assert_response :success
  end

  test "should update revolution" do
    patch revolution_url(@revolution), params: { revolution: { repeater_vals: @revolution.repeater_vals, status: @revolution.status, total_seconds: @revolution.total_seconds } }
    assert_redirected_to revolution_url(@revolution)
  end

  test "should destroy revolution" do
    assert_difference('Revolution.count', -1) do
      delete revolution_url(@revolution)
    end

    assert_redirected_to revolutions_url
  end
end

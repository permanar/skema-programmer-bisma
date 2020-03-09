require 'test_helper'

class DamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dam = dams(:one)
  end

  test "should get index" do
    get dams_url
    assert_response :success
  end

  test "should get new" do
    get new_dam_url
    assert_response :success
  end

  test "should create dam" do
    assert_difference('Dam.count') do
      post dams_url, params: { dam: { dam_created: @dam.dam_created, name: @dam.name, region: @dam.region, size: @dam.size } }
    end

    assert_redirected_to dam_url(Dam.last)
  end

  test "should show dam" do
    get dam_url(@dam)
    assert_response :success
  end

  test "should get edit" do
    get edit_dam_url(@dam)
    assert_response :success
  end

  test "should update dam" do
    patch dam_url(@dam), params: { dam: { dam_created: @dam.dam_created, name: @dam.name, region: @dam.region, size: @dam.size } }
    assert_redirected_to dam_url(@dam)
  end

  test "should destroy dam" do
    assert_difference('Dam.count', -1) do
      delete dam_url(@dam)
    end

    assert_redirected_to dams_url
  end
end

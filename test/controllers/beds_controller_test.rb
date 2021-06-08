require 'test_helper'

class BedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get beds_index_url
    assert_response :success
  end

  test "should get show" do
    get beds_show_url
    assert_response :success
  end

  test "should get new" do
    get beds_new_url
    assert_response :success
  end

  test "should get create" do
    get beds_create_url
    assert_response :success
  end

  test "should get delete" do
    get beds_delete_url
    assert_response :success
  end

  test "should get update" do
    get beds_update_url
    assert_response :success
  end

  test "should get edit" do
    get beds_edit_url
    assert_response :success
  end

end

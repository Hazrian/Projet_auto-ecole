require 'test_helper'

class FormationTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get formation_types_new_url
    assert_response :success
  end

  test "should get create" do
    get formation_types_create_url
    assert_response :success
  end

  test "should get update" do
    get formation_types_update_url
    assert_response :success
  end

  test "should get edit" do
    get formation_types_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get formation_types_destroy_url
    assert_response :success
  end

  test "should get show" do
    get formation_types_show_url
    assert_response :success
  end

  test "should get index" do
    get formation_types_index_url
    assert_response :success
  end

end

require 'test_helper'

class StdInfosControllerTest < ActionController::TestCase
  setup do
    @std_info = std_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:std_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create std_info" do
    assert_difference('StdInfo.count') do
      post :create, std_info: { std_id: @std_info.std_id, std_language: @std_info.std_language, std_name_cn: @std_info.std_name_cn, std_name_en: @std_info.std_name_en, std_org: @std_info.std_org, std_release_time: @std_info.std_release_time, std_tag1: @std_info.std_tag1, std_tag2: @std_info.std_tag2 }
    end

    assert_redirected_to std_info_path(assigns(:std_info))
  end

  test "should show std_info" do
    get :show, id: @std_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @std_info
    assert_response :success
  end

  test "should update std_info" do
    put :update, id: @std_info, std_info: { std_id: @std_info.std_id, std_language: @std_info.std_language, std_name_cn: @std_info.std_name_cn, std_name_en: @std_info.std_name_en, std_org: @std_info.std_org, std_release_time: @std_info.std_release_time, std_tag1: @std_info.std_tag1, std_tag2: @std_info.std_tag2 }
    assert_redirected_to std_info_path(assigns(:std_info))
  end

  test "should destroy std_info" do
    assert_difference('StdInfo.count', -1) do
      delete :destroy, id: @std_info
    end

    assert_redirected_to std_infos_path
  end
end

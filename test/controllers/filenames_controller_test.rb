require 'test_helper'

class FilenamesControllerTest < ActionController::TestCase
  setup do
    @filename = filenames(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filenames)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filename" do
    assert_difference('Filename.count') do
      post :create, filename: { filename: @filename.filename }
    end

    assert_redirected_to filename_path(assigns(:filename))
  end

  test "should show filename" do
    get :show, id: @filename
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filename
    assert_response :success
  end

  test "should update filename" do
    patch :update, id: @filename, filename: { filename: @filename.filename }
    assert_redirected_to filename_path(assigns(:filename))
  end

  test "should destroy filename" do
    assert_difference('Filename.count', -1) do
      delete :destroy, id: @filename
    end

    assert_redirected_to filenames_path
  end
end

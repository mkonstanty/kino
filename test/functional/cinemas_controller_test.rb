require 'test_helper'

class CinemasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cinemas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cinema" do
    assert_difference('Cinema.count') do
      post :create, :cinema => { }
    end

    assert_redirected_to cinema_path(assigns(:cinema))
  end

  test "should show cinema" do
    get :show, :id => cinemas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => cinemas(:one).to_param
    assert_response :success
  end

  test "should update cinema" do
    put :update, :id => cinemas(:one).to_param, :cinema => { }
    assert_redirected_to cinema_path(assigns(:cinema))
  end

  test "should destroy cinema" do
    assert_difference('Cinema.count', -1) do
      delete :destroy, :id => cinemas(:one).to_param
    end

    assert_redirected_to cinemas_path
  end
end

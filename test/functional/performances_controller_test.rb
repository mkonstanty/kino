require 'test_helper'

class PerformancesControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:performances)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_performance
    assert_difference('Performance.count') do
      post :create, :performance => { }
    end

    assert_redirected_to performance_path(assigns(:performance))
  end

  def test_should_show_performance
    get :show, :id => performances(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => performances(:one).id
    assert_response :success
  end

  def test_should_update_performance
    put :update, :id => performances(:one).id, :performance => { }
    assert_redirected_to performance_path(assigns(:performance))
  end

  def test_should_destroy_performance
    assert_difference('Performance.count', -1) do
      delete :destroy, :id => performances(:one).id
    end

    assert_redirected_to performances_path
  end
end

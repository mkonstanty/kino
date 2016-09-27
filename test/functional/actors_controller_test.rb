require File.dirname(__FILE__) + '/../test_helper'

class ActorsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:actors)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_actor
    assert_difference('Actor.count') do
      post :create, :actor => { }
    end

    assert_redirected_to actor_path(assigns(:actor))
  end

  def test_should_show_actor
    get :show, :id => actors(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => actors(:one).id
    assert_response :success
  end

  def test_should_update_actor
    put :update, :id => actors(:one).id, :actor => { }
    assert_redirected_to actor_path(assigns(:actor))
  end

  def test_should_destroy_actor
    assert_difference('Actor.count', -1) do
      delete :destroy, :id => actors(:one).id
    end

    assert_redirected_to actors_path
  end
end

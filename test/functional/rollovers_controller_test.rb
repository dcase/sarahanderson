require 'test_helper'

class RolloversControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rollovers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rollover" do
    assert_difference('Rollover.count') do
      post :create, :rollover => { }
    end

    assert_redirected_to rollover_path(assigns(:rollover))
  end

  test "should show rollover" do
    get :show, :id => rollovers(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => rollovers(:one).id
    assert_response :success
  end

  test "should update rollover" do
    put :update, :id => rollovers(:one).id, :rollover => { }
    assert_redirected_to rollover_path(assigns(:rollover))
  end

  test "should destroy rollover" do
    assert_difference('Rollover.count', -1) do
      delete :destroy, :id => rollovers(:one).id
    end

    assert_redirected_to rollovers_path
  end
end

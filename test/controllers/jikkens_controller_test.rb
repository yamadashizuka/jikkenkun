require 'test_helper'

class JikkensControllerTest < ActionController::TestCase
  setup do
    @jikken = jikkens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jikkens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jikken" do
    assert_difference('Jikken.count') do
      post :create, jikken: { act_end: @jikken.act_end, act_start: @jikken.act_start, memo: @jikken.memo, plan_end: @jikken.plan_end, plan_start: @jikken.plan_start, title: @jikken.title }
    end

    assert_redirected_to jikken_path(assigns(:jikken))
  end

  test "should show jikken" do
    get :show, id: @jikken
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jikken
    assert_response :success
  end

  test "should update jikken" do
    patch :update, id: @jikken, jikken: { act_end: @jikken.act_end, act_start: @jikken.act_start, memo: @jikken.memo, plan_end: @jikken.plan_end, plan_start: @jikken.plan_start, title: @jikken.title }
    assert_redirected_to jikken_path(assigns(:jikken))
  end

  test "should destroy jikken" do
    assert_difference('Jikken.count', -1) do
      delete :destroy, id: @jikken
    end

    assert_redirected_to jikkens_path
  end
end

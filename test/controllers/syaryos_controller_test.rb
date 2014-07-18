require 'test_helper'

class SyaryosControllerTest < ActionController::TestCase
  setup do
    @syaryo = syaryos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:syaryos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create syaryo" do
    assert_difference('Syaryo.count') do
      post :create, syaryo: { condition: @syaryo.condition, jikken_id: @syaryo.jikken_id, keeping_place: @syaryo.keeping_place, memo: @syaryo.memo, number_plate: @syaryo.number_plate, status: @syaryo.status }
    end

    assert_redirected_to syaryo_path(assigns(:syaryo))
  end

  test "should show syaryo" do
    get :show, id: @syaryo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @syaryo
    assert_response :success
  end

  test "should update syaryo" do
    patch :update, id: @syaryo, syaryo: { condition: @syaryo.condition, jikken_id: @syaryo.jikken_id, keeping_place: @syaryo.keeping_place, memo: @syaryo.memo, number_plate: @syaryo.number_plate, status: @syaryo.status }
    assert_redirected_to syaryo_path(assigns(:syaryo))
  end

  test "should destroy syaryo" do
    assert_difference('Syaryo.count', -1) do
      delete :destroy, id: @syaryo
    end

    assert_redirected_to syaryos_path
  end
end

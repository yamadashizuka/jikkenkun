require 'test_helper'

class BuhinsControllerTest < ActionController::TestCase
  setup do
    @buhin = buhins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:buhins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create buhin" do
    assert_difference('Buhin.count') do
      post :create, buhin: { hinban: @buhin.hinban, hinmei: @buhin.hinmei, jikken_id: @buhin.jikken_id, kosu: @buhin.kosu, nouhin_day: @buhin.nouhin_day, nouhin_sya: @buhin.nouhin_sya, tantou: @buhin.tantou }
    end

    assert_redirected_to buhin_path(assigns(:buhin))
  end

  test "should show buhin" do
    get :show, id: @buhin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @buhin
    assert_response :success
  end

  test "should update buhin" do
    patch :update, id: @buhin, buhin: { hinban: @buhin.hinban, hinmei: @buhin.hinmei, jikken_id: @buhin.jikken_id, kosu: @buhin.kosu, nouhin_day: @buhin.nouhin_day, nouhin_sya: @buhin.nouhin_sya, tantou: @buhin.tantou }
    assert_redirected_to buhin_path(assigns(:buhin))
  end

  test "should destroy buhin" do
    assert_difference('Buhin.count', -1) do
      delete :destroy, id: @buhin
    end

    assert_redirected_to buhins_path
  end
end

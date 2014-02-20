require 'test_helper'

class LocosControllerTest < ActionController::TestCase
  setup do
    @loco = locos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loco" do
    assert_difference('Loco.count') do
      post :create, loco: { Arr: @loco.Arr, Base: @loco.Base, Coast: @loco.Coast, Coasthrs: @loco.Coasthrs, Dep: @loco.Dep, Hault: @loco.Hault, HaultHrs: @loco.HaultHrs, KMS: @loco.KMS, Kwhgen: @loco.Kwhgen, Kwhhalt: @loco.Kwhhalt, Kwhration: @loco.Kwhration, Load: @loco.Load, Locono: @loco.Locono, Section: @loco.Section, Train: @loco.Train, Traintype: @loco.Traintype, crew_id: @loco.crew_id, kwhrun: @loco.kwhrun }
    end

    assert_redirected_to loco_path(assigns(:loco))
  end

  test "should show loco" do
    get :show, id: @loco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loco
    assert_response :success
  end

  test "should update loco" do
    put :update, id: @loco, loco: { Arr: @loco.Arr, Base: @loco.Base, Coast: @loco.Coast, Coasthrs: @loco.Coasthrs, Dep: @loco.Dep, Hault: @loco.Hault, HaultHrs: @loco.HaultHrs, KMS: @loco.KMS, Kwhgen: @loco.Kwhgen, Kwhhalt: @loco.Kwhhalt, Kwhration: @loco.Kwhration, Load: @loco.Load, Locono: @loco.Locono, Section: @loco.Section, Train: @loco.Train, Traintype: @loco.Traintype, crew_id: @loco.crew_id, kwhrun: @loco.kwhrun }
    assert_redirected_to loco_path(assigns(:loco))
  end

  test "should destroy loco" do
    assert_difference('Loco.count', -1) do
      delete :destroy, id: @loco
    end

    assert_redirected_to locos_path
  end
end

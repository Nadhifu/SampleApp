require 'test_helper'

class Payment2sControllerTest < ActionController::TestCase
  setup do
    @payment2 = payment2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment2" do
    assert_difference('Payment2.count') do
      post :create, payment2: { checkno: @payment2.checkno, checkref: @payment2.checkref, pmtamt: @payment2.pmtamt, ssn: @payment2.ssn }
    end

    assert_redirected_to payment2_path(assigns(:payment2))
  end

  test "should show payment2" do
    get :show, id: @payment2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment2
    assert_response :success
  end

  test "should update payment2" do
    put :update, id: @payment2, payment2: { checkno: @payment2.checkno, checkref: @payment2.checkref, pmtamt: @payment2.pmtamt, ssn: @payment2.ssn }
    assert_redirected_to payment2_path(assigns(:payment2))
  end

  test "should destroy payment2" do
    assert_difference('Payment2.count', -1) do
      delete :destroy, id: @payment2
    end

    assert_redirected_to payment2s_path
  end
end

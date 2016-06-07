require 'test_helper'

class OrderKindsControllerTest < ActionController::TestCase
  setup do
    @order_kind = order_kinds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_kinds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_kind" do
    assert_difference('OrderKind.count') do
      post :create, order_kind: { order_kind_name: @order_kind.order_kind_name }
    end

    assert_redirected_to order_kind_path(assigns(:order_kind))
  end

  test "should show order_kind" do
    get :show, id: @order_kind
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_kind
    assert_response :success
  end

  test "should update order_kind" do
    patch :update, id: @order_kind, order_kind: { order_kind_name: @order_kind.order_kind_name }
    assert_redirected_to order_kind_path(assigns(:order_kind))
  end

  test "should destroy order_kind" do
    assert_difference('OrderKind.count', -1) do
      delete :destroy, id: @order_kind
    end

    assert_redirected_to order_kinds_path
  end
end

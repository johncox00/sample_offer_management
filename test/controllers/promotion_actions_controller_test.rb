require 'test_helper'

class PromotionActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promotion_action = promotion_actions(:one)
  end

  test "should get index" do
    get promotion_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_promotion_action_url
    assert_response :success
  end

  test "should create promotion_action" do
    assert_difference('PromotionAction.count') do
      post promotion_actions_url, params: { promotion_action: { amount: @promotion_action.amount, billing_description: @promotion_action.billing_description, coupon_duration: @promotion_action.coupon_duration, discount_type: @promotion_action.discount_type, identifier: @promotion_action.identifier, promotion_id: @promotion_action.promotion_id, type: @promotion_action.type } }
    end

    assert_redirected_to promotion_action_url(PromotionAction.last)
  end

  test "should show promotion_action" do
    get promotion_action_url(@promotion_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_promotion_action_url(@promotion_action)
    assert_response :success
  end

  test "should update promotion_action" do
    patch promotion_action_url(@promotion_action), params: { promotion_action: { amount: @promotion_action.amount, billing_description: @promotion_action.billing_description, coupon_duration: @promotion_action.coupon_duration, discount_type: @promotion_action.discount_type, identifier: @promotion_action.identifier, promotion_id: @promotion_action.promotion_id, type: @promotion_action.type } }
    assert_redirected_to promotion_action_url(@promotion_action)
  end

  test "should destroy promotion_action" do
    assert_difference('PromotionAction.count', -1) do
      delete promotion_action_url(@promotion_action)
    end

    assert_redirected_to promotion_actions_url
  end
end

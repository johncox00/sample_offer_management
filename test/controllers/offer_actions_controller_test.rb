require 'test_helper'

class OfferActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offer_action = offer_actions(:one)
  end

  test "should get index" do
    get offer_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_offer_action_url
    assert_response :success
  end

  test "should create offer_action" do
    assert_difference('OfferAction.count') do
      post offer_actions_url, params: { offer_action: { action_identifier: @offer_action.action_identifier, action_type: @offer_action.action_type, offer_id: @offer_action.offer_id } }
    end

    assert_redirected_to offer_action_url(OfferAction.last)
  end

  test "should show offer_action" do
    get offer_action_url(@offer_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_offer_action_url(@offer_action)
    assert_response :success
  end

  test "should update offer_action" do
    patch offer_action_url(@offer_action), params: { offer_action: { action_identifier: @offer_action.action_identifier, action_type: @offer_action.action_type, offer_id: @offer_action.offer_id } }
    assert_redirected_to offer_action_url(@offer_action)
  end

  test "should destroy offer_action" do
    assert_difference('OfferAction.count', -1) do
      delete offer_action_url(@offer_action)
    end

    assert_redirected_to offer_actions_url
  end
end

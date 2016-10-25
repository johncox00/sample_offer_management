require 'test_helper'

class OfferRulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offer_rule = offer_rules(:one)
  end

  test "should get index" do
    get offer_rules_url
    assert_response :success
  end

  test "should get new" do
    get new_offer_rule_url
    assert_response :success
  end

  test "should create offer_rule" do
    assert_difference('OfferRule.count') do
      post offer_rules_url, params: { offer_rule: { field_type: @offer_rule.field_type, offer_id: @offer_rule.offer_id, operator: @offer_rule.operator, threshold: @offer_rule.threshold, user_method: @offer_rule.user_method } }
    end

    assert_redirected_to offer_rule_url(OfferRule.last)
  end

  test "should show offer_rule" do
    get offer_rule_url(@offer_rule)
    assert_response :success
  end

  test "should get edit" do
    get edit_offer_rule_url(@offer_rule)
    assert_response :success
  end

  test "should update offer_rule" do
    patch offer_rule_url(@offer_rule), params: { offer_rule: { field_type: @offer_rule.field_type, offer_id: @offer_rule.offer_id, operator: @offer_rule.operator, threshold: @offer_rule.threshold, user_method: @offer_rule.user_method } }
    assert_redirected_to offer_rule_url(@offer_rule)
  end

  test "should destroy offer_rule" do
    assert_difference('OfferRule.count', -1) do
      delete offer_rule_url(@offer_rule)
    end

    assert_redirected_to offer_rules_url
  end
end

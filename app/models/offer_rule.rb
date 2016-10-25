class OfferRule < ApplicationRecord
  belongs_to :offer

  def self.field_types
    [
      ['String', 'string'],
      ['Integer', 'integer'],
      ['Float', 'float'],
      ['Boolean', 'boolean'],
      ['Array', 'array']
    ]
  end

  def self.operators
    [
      ['=', 'equal'],
      ['!=', 'not_equal'],
      ['>', 'greater_than'],
      ['>=', 'greater_than_equal'],
      ['<', 'less_than'],
      ['<=', 'less_than_equal'],
      ['in', 'in'],
      ['not in', 'not_in'],
      ['includes any', 'does_not_include_any'],
      ['does not include any', 'does_not_include_any'],
      ['contains subset', 'does_not_contain_subset'],
      ['matches', 'matches'],
      ['does not match', 'does_not_match'],
      ['or', 'or']
    ]
  end

  def self.user_methods
    [
      :first_name,
      :last_name,
      :taxable_attributes,
      :user_selections,
      :recurly_billing_info,
      :tax_exempt?,
      :loves_tms_ids,
      :prg_service_ids,
      :user_zipcode,
      :api_attributes,
      :domain_key,
      :lineup_key,
      :subscriber_biller,
      :expires_at,
      :preview_expired?,
      :sources,
      :channels,
      :parental_controls_configured?,
      :devices_streaming,
      :has_multistream_package,
      :multistream_entitlement_ids,
      :concurrency_limit,
      :concurrency_limit_reached?,
      :user_and_channel_rewinds,
      :brand,
      :most_relevant_subscription,
      :most_relevant_plan_code,
      :future_subscriptions,
      :expired_subscriptions,
      :all_subscriptions,
      :all_plan_codes,
      :free_trial_packages,
      :base_packages,
      :qualified_prepaid_plans,
      :most_recent_offer_redemptions,
      :has_recurly_account?,
      :billing_info,
      :is_third_party_user,
      :valid_billing_info?,
      :current_seller_client,
      :is_active?,
      :in_trial?,
      :current_application,
      :current_csr_agent,
      :has_no_entitlements?,
      :is_lead_user?,
      :is_amazon?,
      :is_swa_amazon?
    ].map{|e| [e.to_s.titleize, e.to_s]}
  end
end

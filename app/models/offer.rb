class Offer < ApplicationRecord
  has_many :offer_rules, dependent: :destroy
  has_many :offer_actions, dependent: :destroy
end

class Promotion < ApplicationRecord
  has_many :promotion_actions, dependent: :destroy
end

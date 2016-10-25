class CreatePromotionActions < ActiveRecord::Migration[5.0]
  def change
    create_table :promotion_actions do |t|
      t.references :promotion, foreign_key: true
      t.float :amount
      t.string :billing_description
      t.string :discount_type
      t.string :identifier
      t.string :type
      t.integer :coupon_duration

      t.timestamps
    end
  end
end

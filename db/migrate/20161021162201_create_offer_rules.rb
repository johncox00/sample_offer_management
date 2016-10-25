class CreateOfferRules < ActiveRecord::Migration[5.0]
  def change
    create_table :offer_rules do |t|
      t.references :offer, foreign_key: true
      t.string :user_method
      t.string :operator
      t.string :threshold
      t.string :field_type

      t.timestamps
    end
  end
end

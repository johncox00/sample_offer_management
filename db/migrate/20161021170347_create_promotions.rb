class CreatePromotions < ActiveRecord::Migration[5.0]
  def change
    create_table :promotions do |t|
      t.string :identifier
      t.integer :code_length
      t.string :code_prefix
      t.datetime :start_date
      t.datetime :end_date
      t.string :partner_name
      t.integer :redemption_count
      t.integer :redemption_limit
      t.string :type
      t.boolean :active
      t.integer :exclusivity_window
      t.string :offer_identifier

      t.timestamps
    end
  end
end

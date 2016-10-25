class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :identifier
      t.datetime :start_date
      t.datetime :end_date
      t.string :offer_type
      t.boolean :active
      t.integer :priority
      t.integer :durration_in_months

      t.timestamps
    end
  end
end

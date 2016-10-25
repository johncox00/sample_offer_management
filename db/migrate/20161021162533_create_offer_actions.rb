class CreateOfferActions < ActiveRecord::Migration[5.0]
  def change
    create_table :offer_actions do |t|
      t.references :offer, foreign_key: true
      t.string :action_type
      t.string :action_identifier

      t.timestamps
    end
  end
end

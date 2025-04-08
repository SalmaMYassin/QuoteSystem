class CreateQuotes < ActiveRecord::Migration[8.0]
  def change
    create_table :quotes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :property_type
      t.string :location
      t.integer :estimated_value
      t.string :status

      t.timestamps
    end
  end
end

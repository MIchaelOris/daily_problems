class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :agent_id
      t.string :address
      t.string :neighborhood
      t.string :bedrooms
      t.integer :price

      t.timestamps
    end
  end
end

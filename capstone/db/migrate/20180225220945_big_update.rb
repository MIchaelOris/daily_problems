class BigUpdate < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :apartment_size, :integer
    add_column :listings, :images, :integer
    add_column :listings, :description, :text
    add_column :listings, :baths, :decimal
    add_column :listings, :style, :string
    remove_column :listings, :agent_id, :string
   
  end
end

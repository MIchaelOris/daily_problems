class AddAgentIdToListings < ActiveRecord::Migration[5.1]
  def change
    remove_column :listings, :apartment_size, :integer
    add_column :listings, :agent_id, :string
    add_column :listings, :price, :integer
  end
end

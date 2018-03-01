class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :cell
      t.string :password_digest
      t.boolean :agent
      t.string :default
      t.string :false

      t.timestamps
    end
  end
end

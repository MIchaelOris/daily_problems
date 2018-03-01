class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :belongs_to

      t.timestamps
    end
  end
end

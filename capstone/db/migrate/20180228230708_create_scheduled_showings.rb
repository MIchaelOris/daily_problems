class CreateScheduledShowings < ActiveRecord::Migration[5.1]
  def change
    create_table :scheduled_showings do |t|

      t.timestamps
    end
  end
end

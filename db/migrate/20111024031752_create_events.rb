class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.time :start
      t.integer :max_attendees

      t.timestamps
    end
  end
end

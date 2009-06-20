class CreatePomodoros < ActiveRecord::Migration
  def self.up
    create_table :pomodoros do |t|
      t.string :description
      t.integer :user_id
      t.datetime :timestamp
      t.timestamps
    end
  end

  def self.down
    drop_table :pomodoros
  end
end

class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.text :description
      t.integer :priority
      t.integer :complexity
      t.integer :estimate_time
      t.integer :spent_time

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end

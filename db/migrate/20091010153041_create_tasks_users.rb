class CreateTasksUsers < ActiveRecord::Migration
  def self.up
    create_table :tasks_users do |t|
      t.references :tasks, :null => false
      t.references :users, :null => false
    end
  end

  def self.down
    drop_table :tasks_users
  end
end

class CreatePhases < ActiveRecord::Migration
  def self.up
    create_table :phases do |t|
      t.text :description
      t.references :project
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end

  def self.down
    drop_table :phases
  end
end

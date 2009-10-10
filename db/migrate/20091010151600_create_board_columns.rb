class CreateBoardColumns < ActiveRecord::Migration
  def self.up
    create_table :board_columns do |t|
      t.string :label
      t.integer :rank
      t.references :board

      t.timestamps
    end
  end

  def self.down
    drop_table :board_columns
  end
end

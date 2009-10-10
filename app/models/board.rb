class Board < ActiveRecord::Base

  # associations
  has_many :board_columns, :dependent => :delete_all
  accepts_nested_attributes_for :board_columns, :allow_destroy => true

  # validations
  validates_presence_of :description


  def board_columns_attributes=(column_attributes)
    current_board_columns = board_columns.collect(&:id)
    new_board_columns  = []

    column_attributes.each do |attributes|
      if attributes[:id].blank?
        board_column = board_columns.build(attributes)
      else
        board_column = board_columns.detect { |t| t.id == attributes[:id].to_i }
        board_column.attributes = attributes
        new_board_columns << attributes[:id].to_i
      end
    end

    BoardColumn.delete_all( :id => current_board_columns - new_board_columns )
  end

end

class Board < ActiveRecord::Base

  # associations
  has_many :board_columns, :dependent => :delete_all
  accepts_nested_attributes_for :board_columns, :allow_destroy => true

  # validations
  validates_presence_of :description

  def board_columns_attributes=(attributes)
    current_board_columns = board_columns.collect(&:id)
    new_board_columns  = []

    attributes.each_index do |i|
      # change the rank of the column (range: 1 to [number_of_columns])
      attributes[i][:rank] = i + 1
      if attributes[i][:id].blank?
        board_column = board_columns.build(attributes[i])
      else
        board_column = board_columns.detect { |t| t.id == attributes[i][:id].to_i }
        board_column.attributes = attributes[i]
        new_board_columns << attributes[i][:id].to_i
      end
    end

    BoardColumn.delete_all( :id => current_board_columns - new_board_columns )
  end

end

class BoardColumn < ActiveRecord::Base
  
  # associations
  belongs_to :board

  # validations
  validates_presence_of :label
  validates_presence_of :board
  validates_presence_of :rank
  validates_numericality_of :rank, :only_integer => true

  # plugin configurations
  ordered_by 'rank ASC'

end

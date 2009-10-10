module BoardsHelper

  def add_board_column(name)
    column = BoardColumn.new
    link_to_function name do |page|
      page.insert_html :bottom, "columns-set", :partial => 'board_column', :object => column
    end
  end

end

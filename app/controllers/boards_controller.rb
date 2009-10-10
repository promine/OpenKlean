class BoardsController < ApplicationController
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boards }
    end
  end

  def new
    @board = Board.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @board }
    end
  end

  def create
    @board = Board.new(params[:board])
    params[:board][:board_columns_attributes] ||= []
    params[:board][:board_columns_attributes].each do |column|
      column[:rank] = 1 if column[:rank].blank?
    end

    respond_to do |format|
      if @board.save
        flash[:notice] = t('activerecord.success.create', :model => Board)
        format.html { redirect_to :action => (params.key?(:save_and_new)) ? "new" : "index" }
        format.xml  { render :xml => @board, :status => :created, :location => @board }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @board.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @board = Board.find(params[:id])
  end

  def update
    @board = Board.find(params[:id])
    params[:board][:board_columns_attributes] ||= []
    params[:board][:board_columns_attributes].each do |column|
      column[:rank] = 1 if column[:rank].blank?
    end

    respond_to do |format|
      if @board.update_attributes(params[:board])
        flash[:notice] = t('activerecord.success.update', :model => Board)
        format.html { redirect_to :action => (params.key?(:save_and_new)) ? "new" : "index" }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @board.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @board = Board.find(params[:id])
    @board.destroy

    respond_to do |format|
      flash[:notice] = t('activerecord.success.remove', :model => Board)
      format.html { redirect_to(boards_url) }
      format.xml  { head :ok }
    end
  end
end

class PhasesController < ApplicationController
  
  def index
    @phases = Phase.find(:all)
  end

  def show
    @phase = Phase.find(params[:id])
  end

  def new
    @projects = Project.all
    @phase = Phase.new
  end

  def edit
    @projects = Project.all
    @phase = Phase.find(params[:id])
  end
  
  def create
    @phase = Phase.new(params[:phase])

    respond_to do |format|
      if @phase.save
        flash[:notice] = 'Phase was successfully created.'
        format.html { redirect_to(@phase) }
      else
        format.html { render :action => "new" }
      end
    end
  end
  
  def update
    @phase = Phase.find(params[:id])

    respond_to do |format|
      if @phase.update_attributes(params[:phase])
        flash[:notice] = 'Phase was successfully updated.'
        format.html { redirect_to(@phase) }
      else
        format.html { render :action => "edit" }
      end
    end
  end
  
  def destroy
    @phase = Phase.find(params[:id])
    @phase.destroy

    respond_to do |format|
      format.html { redirect_to(phases_url) }
      format.xml  { head :ok }
    end
  end

end

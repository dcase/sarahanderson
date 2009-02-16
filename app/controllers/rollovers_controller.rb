class RolloversController < ApplicationController
  before_filter :permission
  # GET /rollovers
  # GET /rollovers.xml
  def index
    @rollovers = Rollover.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rollovers }
    end
  end

  # GET /rollovers/1
  # GET /rollovers/1.xml
  def show
    @rollover = Rollover.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @rollover }
    end
  end

  # GET /rollovers/new
  # GET /rollovers/new.xml
  def new
    @rollover = Rollover.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @rollover }
    end
  end

  # GET /rollovers/1/edit
  def edit
    @rollover = Rollover.find(params[:id])
  end

  # POST /rollovers
  # POST /rollovers.xml
  def create
    @rollover = Rollover.new(params[:rollover])

    respond_to do |format|
      if @rollover.save
        flash[:notice] = 'Rollover was successfully created.'
        format.html { redirect_to(@rollover) }
        format.xml  { render :xml => @rollover, :status => :created, :location => @rollover }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @rollover.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rollovers/1
  # PUT /rollovers/1.xml
  def update
    @rollover = Rollover.find(params[:id])

    respond_to do |format|
      if @rollover.update_attributes(params[:rollover])
        flash[:notice] = 'Rollover was successfully updated.'
        format.html { redirect_to(@rollover) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @rollover.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rollovers/1
  # DELETE /rollovers/1.xml
  def destroy
    @rollover = Rollover.find(params[:id])
    @rollover.destroy

    respond_to do |format|
      format.html { redirect_to(rollovers_url) }
      format.xml  { head :ok }
    end
  end
end

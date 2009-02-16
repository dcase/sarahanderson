class CategoriesController < ApplicationController
  before_filter :permission, :except => :show
  # GET /categories
  # GET /categories.xml
  def index
    @categories = Category.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categories }
    end
  end

  # GET /categories/1
  # GET /categories/1.xml
  def show
    @category = Category.find(params[:id])
    if @category.root? and !@category.is_home?
      @category = @category.children.first
    end
    
    unless @category.is_home?
      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @category }
      end
    else
      respond_to do |format|
        format.html { redirect_to :controller => 'static', :action => 'home' }
      end
    end
  end

  # GET /categories/new
  # GET /categories/new.xml
  def new
    @category = Category.new
    @rollover = Rollover.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @category }
    end
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find(params[:id])
    @rollover = @category.rollover
  end

  # POST /categories
  # POST /categories.xml
  def create
    @category = Category.new(params[:category])
    
    # Create rollover
    @rollover = Rollover.create(params[:rollover])
    @category.rollover = @rollover

    respond_to do |format|
      if @category.save
        
       # Assign to parent
        unless params[:category][:parent_id].empty?
          @parent = Category.find(params[:category][:parent_id])
          @category.move_to_child_of(@parent)
        end
        
        flash[:notice] = 'Category was successfully created.'
        format.html { redirect_to(@category) }
        format.xml  { render :xml => @category, :status => :created, :location => @category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.xml
  def update
    @category = Category.find(params[:id])
    @rollover = @category.rollover
    
    unless params[:category][:parent_id].empty?
      @parent = Category.find(params[:category][:parent_id])
      @category.move_to_child_of(@parent)
    end
    
    respond_to do |format|
      if @category.update_attributes(params[:category]) and ( @rollover.update_attributes(params[:rollover]) unless @category.is_home?)
        flash[:notice] = 'Category was successfully updated.'
        format.html { redirect_to(@category) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.xml
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to(categories_url) }
      format.xml  { head :ok }
    end
  end
  
  def inspect_params
    render :text => params.inspect
  end
end

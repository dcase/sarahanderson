class PiecesController < ApplicationController
  before_filter :permission
  # GET /pieces
  # GET /pieces.xml
  def index
    @category = Category.find(params[:category_id])
    @pieces = @category.pieces.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pieces }
    end
  end

  # GET /pieces/1
  # GET /pieces/1.xml
  def show
    @category = Category.find(params[:category_id])
    @piece = @category.pieces.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @piece }
    end
  end

  # GET /pieces/new
  # GET /pieces/new.xml
  def new
    @category = Category.find(params[:category_id])
    @piece = @category.pieces.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @piece }
    end
  end

  # GET /pieces/1/edit
  def edit
    @category = Category.find(params[:category_id])
    @piece = @category.pieces.find(params[:id])
  end

  # POST /pieces
  # POST /pieces.xml
  def create
    @category = Category.find(params[:category_id])
    @piece = @category.pieces.build(params[:piece])

    respond_to do |format|
      if @piece.save
        flash[:notice] = 'Piece was successfully created.'
        format.html { redirect_to category_pieces_url(@category) }
        format.xml  { render :xml => @piece, :status => :created, :location => @piece }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @piece.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pieces/1
  # PUT /pieces/1.xml
  def update
    @category = Category.find(params[:category_id])
    @piece = @category.pieces.find(params[:id])

    respond_to do |format|
      if @piece.update_attributes(params[:piece])
        flash[:notice] = 'Piece was successfully updated.'
        format.html { redirect_to category_pieces_url(@category) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @piece.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pieces/1
  # DELETE /pieces/1.xml
  def destroy
    @category = Category.find(params[:category_id])
    @piece = @category.pieces.find(params[:id])
    @piece.destroy

    respond_to do |format|
      format.html { redirect_to category_pieces_url(@category) }
      format.xml  { head :ok }
    end
  end
  
  def order
    params[:piece].each_with_index do |id, position|
     Piece.update(id, {:position => position+1})
    end
    render :text => params.inspect
  end
end

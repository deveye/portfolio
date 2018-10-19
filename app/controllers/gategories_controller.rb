class GategoriesController < ApplicationController
  before_action :set_gategory, only: [:show, :edit, :update, :destroy]

  # GET /gategories
  # GET /gategories.json
  def index
    @gategories = Gategory.all
  end

  # GET /gategories/1
  # GET /gategories/1.json
  def show
  end

  # GET /gategories/new
  def new
    @gategory = Gategory.new
  end

  # GET /gategories/1/edit
  def edit
  end

  # POST /gategories
  # POST /gategories.json
  def create
    @gategory = Gategory.new(gategory_params)

    respond_to do |format|
      if @gategory.save
        format.html { redirect_to @gategory, notice: 'Gategory was successfully created.' }
        format.json { render :show, status: :created, location: @gategory }
      else
        format.html { render :new }
        format.json { render json: @gategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gategories/1
  # PATCH/PUT /gategories/1.json
  def update
    respond_to do |format|
      if @gategory.update(gategory_params)
        format.html { redirect_to @gategory, notice: 'Gategory was successfully updated.' }
        format.json { render :show, status: :ok, location: @gategory }
      else
        format.html { render :edit }
        format.json { render json: @gategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gategories/1
  # DELETE /gategories/1.json
  def destroy
    @gategory.destroy
    respond_to do |format|
      format.html { redirect_to gategories_url, notice: 'Gategory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gategory
      @gategory = Gategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gategory_params
      params.require(:gategory).permit(:title, :description)
    end
end

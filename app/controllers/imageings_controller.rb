class ImageingsController < ApplicationController
  before_action :set_imageing, only: [:show, :edit, :update, :destroy]

  # GET /imageings
  # GET /imageings.json
  def index
    @imageings = Imageing.all
  end

  # GET /imageings/1
  # GET /imageings/1.json
  def show
  end

  # GET /imageings/new
  def new
    @imageing = Imageing.new
  end

  # GET /imageings/1/edit
  def edit
  end

  # POST /imageings
  # POST /imageings.json
  def create
    @imageing = Imageing.new(imageing_params)

    respond_to do |format|
      if @imageing.save
        format.html { redirect_to @imageing, notice: 'Imageing was successfully created.' }
        format.json { render action: 'show', status: :created, location: @imageing }
      else
        format.html { render action: 'new' }
        format.json { render json: @imageing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imageings/1
  # PATCH/PUT /imageings/1.json
  def update
    respond_to do |format|
      if @imageing.update(imageing_params)
        format.html { redirect_to @imageing, notice: 'Imageing was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @imageing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imageings/1
  # DELETE /imageings/1.json
  def destroy
    @imageing.destroy
    respond_to do |format|
      format.html { redirect_to imageings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imageing
      @imageing = Imageing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imageing_params
      params.require(:imageing).permit(:parent_id, :parent, :status)
    end
end

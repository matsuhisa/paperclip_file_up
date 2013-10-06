class AttachesController < ApplicationController
  before_action :set_attach, only: [:show, :edit, :update, :destroy]

  # GET /attaches
  # GET /attaches.json
  def index
    @attaches = Attach.all
  end

  # GET /attaches/1
  # GET /attaches/1.json
  def show
  end

  # GET /attaches/new
  def new
    @attach = Attach.new
  end

  # GET /attaches/1/edit
  def edit
  end

  # POST /attaches
  # POST /attaches.json
  def create
    @attach = Attach.new(attach_params)

    respond_to do |format|
      if @attach.save
        format.html { redirect_to @attach, notice: 'Attach was successfully created.' }
        format.json { render action: 'show', status: :created, location: @attach }
      else
        format.html { render action: 'new' }
        format.json { render json: @attach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attaches/1
  # PATCH/PUT /attaches/1.json
  def update
    respond_to do |format|
      if @attach.update(attach_params)
        format.html { redirect_to @attach, notice: 'Attach was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @attach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attaches/1
  # DELETE /attaches/1.json
  def destroy
    @attach.destroy
    respond_to do |format|
      format.html { redirect_to attaches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attach
      @attach = Attach.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attach_params
      params.require(:attach).permit(:file, :title, :description, :photo)
    end
end

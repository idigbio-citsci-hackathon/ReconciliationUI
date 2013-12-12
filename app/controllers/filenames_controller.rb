class FilenamesController < ApplicationController
  before_action :set_filename, only: [:show, :edit, :update, :destroy]

  # GET /filenames
  # GET /filenames.json
  def index
    @filenames = Filename.all
  end

  # GET /filenames/1
  # GET /filenames/1.json
  def show
  end

  # GET /filenames/new
  def new
    @filename = Filename.new
  end

  # GET /filenames/1/edit
  def edit
  end

  # POST /filenames
  # POST /filenames.json
  def create
    @filename = Filename.new(filename_params)

    respond_to do |format|
      if @filename.save
        format.html { redirect_to @filename, notice: 'Filename was successfully created.' }
        format.json { render action: 'show', status: :created, location: @filename }
      else
        format.html { render action: 'new' }
        format.json { render json: @filename.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filenames/1
  # PATCH/PUT /filenames/1.json
  def update
    respond_to do |format|
      if @filename.update(filename_params)
        format.html { redirect_to @filename, notice: 'Filename was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @filename.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filenames/1
  # DELETE /filenames/1.json
  def destroy
    @filename.destroy
    respond_to do |format|
      format.html { redirect_to filenames_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filename
      @filename = Filename.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filename_params
      params.require(:filename).permit(:filename)
    end
end

class TranscribedRecordsController < ApplicationController
  before_action :set_transcribed_record, only: [:show, :edit, :update, :destroy]

  # GET /transcribed_records
  # GET /transcribed_records.json
  def index
    @transcribed_records = TranscribedRecord.all
  end

  # GET /transcribed_records/1
  # GET /transcribed_records/1.json
  def show
  end

  # GET /transcribed_records/new
  def new
    @transcribed_record = TranscribedRecord.new
  end

  # GET /transcribed_records/1/edit
  def edit
  end

  # POST /transcribed_records
  # POST /transcribed_records.json
  def create
    @transcribed_record = TranscribedRecord.new(transcribed_record_params)

    respond_to do |format|
      if @transcribed_record.save
        format.html { redirect_to @transcribed_record, notice: 'Transcribed record was successfully created.' }
        format.json { render action: 'show', status: :created, location: @transcribed_record }
      else
        format.html { render action: 'new' }
        format.json { render json: @transcribed_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transcribed_records/1
  # PATCH/PUT /transcribed_records/1.json
  def update
    respond_to do |format|
      if @transcribed_record.update(transcribed_record_params)
        format.html { redirect_to @transcribed_record, notice: 'Transcribed record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @transcribed_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transcribed_records/1
  # DELETE /transcribed_records/1.json
  def destroy
    @transcribed_record.destroy
    respond_to do |format|
      format.html { redirect_to transcribed_records_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transcribed_record
      @transcribed_record = TranscribedRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transcribed_record_params
      params.require(:transcribed_record).permit(:collection_id, :subject_id, :user_id, :filename, :created_at, :source_id, :collector, :collector_number, :collection_date, :collection_date_end, :scientific_name, :host, :habitat, :notes, :elevation, :lat_lon, :location, :county, :state_province, :country, :registration_number, :page_number)
    end
end

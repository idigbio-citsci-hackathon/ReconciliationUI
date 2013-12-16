class ReconciledRecordsController < ApplicationController
  before_action :set_reconciled_record, only: [:show, :edit, :update, :destroy]

  # GET /reconciled_records
  # GET /reconciled_records.json
  def index
    @reconciled_records = ReconciledRecord.all
  end

  # GET /reconciled_records/1
  # GET /reconciled_records/1.json
  def show
  end

  # GET /reconciled_records/new
  def new
    @reconciled_record = ReconciledRecord.new
  end

  # GET /reconciled_records/1/edit
  def edit
  end

  # POST /reconciled_records
  # POST /reconciled_records.json
  def create
    @reconciled_record = ReconciledRecord.new(reconciled_record_params)

    respond_to do |format|
      if @reconciled_record.save
        format.html { redirect_to @reconciled_record, notice: 'Reconciled record was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reconciled_record }
      else
        format.html { render action: 'new' }
        format.json { render json: @reconciled_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reconciled_records/1
  # PATCH/PUT /reconciled_records/1.json
  def update
    respond_to do |format|
      if @reconciled_record.update(reconciled_record_params)
        format.html { redirect_to @reconciled_record, notice: 'Reconciled record was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reconciled_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reconciled_records/1
  # DELETE /reconciled_records/1.json
  def destroy
    @reconciled_record.destroy
    respond_to do |format|
      format.html { redirect_to reconciled_records_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reconciled_record
      @reconciled_record = ReconciledRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reconciled_record_params
      params.require(:reconciled_record).permit(:subject_id, :collector, :collector_number, :collection_date, :collection_date_begin, :collection_date_end, :scientific_name, :host, :habitat, :notes, :elevation, :lat_lon, :location, :county, :state_province, :country, :registration_number, :page_number, :reconciler_name)
    end
end

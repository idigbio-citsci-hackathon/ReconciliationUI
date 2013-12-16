require 'test_helper'

class ReconciledRecordsControllerTest < ActionController::TestCase
  setup do
    @reconciled_record = reconciled_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reconciled_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reconciled_record" do
    assert_difference('ReconciledRecord.count') do
      post :create, reconciled_record: { collection_date: @reconciled_record.collection_date, collection_date_begin: @reconciled_record.collection_date_begin, collection_date_end: @reconciled_record.collection_date_end, collector: @reconciled_record.collector, collector_number: @reconciled_record.collector_number, country: @reconciled_record.country, county: @reconciled_record.county, elevation: @reconciled_record.elevation, habitat: @reconciled_record.habitat, host: @reconciled_record.host, lat_lon: @reconciled_record.lat_lon, location: @reconciled_record.location, notes: @reconciled_record.notes, page_number: @reconciled_record.page_number, reconciler_name: @reconciled_record.reconciler_name, registration_number: @reconciled_record.registration_number, scientific_name: @reconciled_record.scientific_name, state_province: @reconciled_record.state_province, subject_id: @reconciled_record.subject_id }
    end

    assert_redirected_to reconciled_record_path(assigns(:reconciled_record))
  end

  test "should show reconciled_record" do
    get :show, id: @reconciled_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reconciled_record
    assert_response :success
  end

  test "should update reconciled_record" do
    patch :update, id: @reconciled_record, reconciled_record: { collection_date: @reconciled_record.collection_date, collection_date_begin: @reconciled_record.collection_date_begin, collection_date_end: @reconciled_record.collection_date_end, collector: @reconciled_record.collector, collector_number: @reconciled_record.collector_number, country: @reconciled_record.country, county: @reconciled_record.county, elevation: @reconciled_record.elevation, habitat: @reconciled_record.habitat, host: @reconciled_record.host, lat_lon: @reconciled_record.lat_lon, location: @reconciled_record.location, notes: @reconciled_record.notes, page_number: @reconciled_record.page_number, reconciler_name: @reconciled_record.reconciler_name, registration_number: @reconciled_record.registration_number, scientific_name: @reconciled_record.scientific_name, state_province: @reconciled_record.state_province, subject_id: @reconciled_record.subject_id }
    assert_redirected_to reconciled_record_path(assigns(:reconciled_record))
  end

  test "should destroy reconciled_record" do
    assert_difference('ReconciledRecord.count', -1) do
      delete :destroy, id: @reconciled_record
    end

    assert_redirected_to reconciled_records_path
  end
end

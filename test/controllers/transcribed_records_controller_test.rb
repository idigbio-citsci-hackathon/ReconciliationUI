require 'test_helper'

class TranscribedRecordsControllerTest < ActionController::TestCase
  setup do
    @transcribed_record = transcribed_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transcribed_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transcribed_record" do
    assert_difference('TranscribedRecord.count') do
      post :create, transcribed_record: { collection_date: @transcribed_record.collection_date, collection_date_end: @transcribed_record.collection_date_end, collection_id: @transcribed_record.collection_id, collector: @transcribed_record.collector, collector_number: @transcribed_record.collector_number, country: @transcribed_record.country, county: @transcribed_record.county, created_at: @transcribed_record.created_at, elevation: @transcribed_record.elevation, filename: @transcribed_record.filename, habitat: @transcribed_record.habitat, host: @transcribed_record.host, lat_lon: @transcribed_record.lat_lon, location: @transcribed_record.location, notes: @transcribed_record.notes, page_number: @transcribed_record.page_number, registration_number: @transcribed_record.registration_number, scientific_name: @transcribed_record.scientific_name, source_id: @transcribed_record.source_id, state_province: @transcribed_record.state_province, subject_id: @transcribed_record.subject_id, user_id: @transcribed_record.user_id }
    end

    assert_redirected_to transcribed_record_path(assigns(:transcribed_record))
  end

  test "should show transcribed_record" do
    get :show, id: @transcribed_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transcribed_record
    assert_response :success
  end

  test "should update transcribed_record" do
    patch :update, id: @transcribed_record, transcribed_record: { collection_date: @transcribed_record.collection_date, collection_date_end: @transcribed_record.collection_date_end, collection_id: @transcribed_record.collection_id, collector: @transcribed_record.collector, collector_number: @transcribed_record.collector_number, country: @transcribed_record.country, county: @transcribed_record.county, created_at: @transcribed_record.created_at, elevation: @transcribed_record.elevation, filename: @transcribed_record.filename, habitat: @transcribed_record.habitat, host: @transcribed_record.host, lat_lon: @transcribed_record.lat_lon, location: @transcribed_record.location, notes: @transcribed_record.notes, page_number: @transcribed_record.page_number, registration_number: @transcribed_record.registration_number, scientific_name: @transcribed_record.scientific_name, source_id: @transcribed_record.source_id, state_province: @transcribed_record.state_province, subject_id: @transcribed_record.subject_id, user_id: @transcribed_record.user_id }
    assert_redirected_to transcribed_record_path(assigns(:transcribed_record))
  end

  test "should destroy transcribed_record" do
    assert_difference('TranscribedRecord.count', -1) do
      delete :destroy, id: @transcribed_record
    end

    assert_redirected_to transcribed_records_path
  end
end

class IngestCsv
  require "#{Rails.root}/app/models/transcribed_record"
  
  def self.ingest(filename)
    print "Ingesting #{filename}\n"
    TranscribedRecord.process(filename)
  end


  
end
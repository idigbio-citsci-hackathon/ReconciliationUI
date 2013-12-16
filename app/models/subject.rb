class Subject < ActiveRecord::Base
  has_many :transcribed_records
  belongs_to :collection
  has_one :reconciled_record
  
  
  def next_reconcilable_subject(threshhold)
    Subject.find_by_sql(
      "SELECT * 
       FROM subjects 
       WHERE transcribed_records_count >= #{threshhold} 
       AND collection_id = #{self.collection_id}
       AND NOT EXISTS ( 
         SELECT id 
         FROM reconciled_records
         WHERE reconciled_records.subject_id = subjects.id )").first
  end
  
end

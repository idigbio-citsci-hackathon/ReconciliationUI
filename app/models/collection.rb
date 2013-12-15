class Collection < ActiveRecord::Base
  has_many :transcribed_records
  has_many :subjects
  
  
  # ornithology url: http://www.notesfromnature.org/subjects/nhm/5203a492ea30522c540000ef_page.jpg
  # calbug url: http://www.notesfromnature.org/subjects/calbug/standard/516d80dcea3052046a0003c4.jpg
  # macrofungi URL: http://storage.idigbio.org/mich/mycology/00143/MICH-F-143250_lg.jpg
  # herbarium url: couldn't resolve on server
  
  def image_url(subject)
    if self.collection_name == "Calbug"
      "http://www.notesfromnature.org/subjects/calbug/standard/#{subject.subject_id}.jpg"
    elsif self.collection_name == "Herbarium"
      "http://www.notesfromnature.org/subjects/sarnac/standard/#{subject.subject_id}.jpg"
    elsif self.collection_name == "Ornithological"
      "http://www.notesfromnature.org/subjects/nhm/#{subject.subject_id}_page.jpg"
    else
      subject.filename # Macrofungi filename is already URL
    end
  end
end

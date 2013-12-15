class Collection < ActiveRecord::Base
  has_many :transcribed_records
  has_many :filenames
  has_many :subjects
end

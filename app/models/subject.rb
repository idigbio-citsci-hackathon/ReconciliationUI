class Subject < ActiveRecord::Base
  has_many :transcribed_records
  belongs_to :collection
end

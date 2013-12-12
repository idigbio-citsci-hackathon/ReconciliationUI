class Filename < ActiveRecord::Base
  has_many :transcribed_records
end

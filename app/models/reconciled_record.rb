class ReconciledRecord < ActiveRecord::Base
  belongs_to :subject
  belongs_to :collection
end

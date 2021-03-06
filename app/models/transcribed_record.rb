class TranscribedRecord < ActiveRecord::Base
  require 'csv'

  belongs_to :collection
  belongs_to :user
  belongs_to :subject, :counter_cache => true

  SUPPRESS = [
    'id',
    'collection_id',
    'user_id',
    'filename_id',
    'subject_id',
    'created_at',
    'updated_at',
    'source_id'
  ]

  def display_attributes
    self.attributes.reject { |k,v| SUPPRESS.include?(k )}
  end


  def self.process(filename)
    CSV.foreach(filename, 
                { headers:           true,
                  converters:        :numeric,
                  header_converters: :symbol }) do |row|
      record = TranscribedRecord.new
      record.fill_from_row(row)
      record.save!
    end
  end

  def fill_from_row(row)            
      user_name = row[:user_name]
      collection_name = row[:collection]
      subject_id = row[:subject_id]
      record_filename = row[:filename]
      
      user ||= find_or_create_user(user_name)
      collection ||= find_or_create_collection(collection_name)
      subject = find_or_create_subject(subject_id, collection, record_filename)

      self.user=user
      self.collection=collection
      self.subject = subject
      
      row.to_hash.each do |k, v|
        if attr = translate(k)
          self[attr] = v
        end
      end
#      binding.pry    
  end

  
  HEADER_TRANSLATION = {
    :created_at => :created_at,
    :collector => :collector,
    :country => :country,
    :county => :county,
    :date_collected => :collection_date,
    :elevation => :elevation,
    :end_date_collected => :collection_date_end,
    :start_date_collected => :collection_date_begin,
    :host => :host,
    :latitude_and_longitude => :lat_lon,
    :locality => :location,
    :other_notes => :notes,
    :stateprovince => :state_province,
    :page_number => :page_number,
    :location => :location,
    :registration_number => :registration_number,
    :scientific_name => :scientific_name,
    :top_percent => :top_percent,
    :locality_and_habitat => :location,
    :collector_number => :collector_number,
    :habitat_and_description => :habitat,
    :scientific_author => :scientific_author
    

  }

  def translate(header)
    HEADER_TRANSLATION[header]        
  end
  
  def find_or_create_subject(subject_id, collection, filename)
    subject = Subject.where(:subject_id => subject_id).first
    subject || Subject.create!(:subject_id => subject_id, :collection => collection, :filename => filename)
  end
  
  
  def find_or_create_user(user_name)
    user = User.where(:user_name => user_name).first
    user || User.create!(:user_name => user_name)
  end
  
  def find_or_create_collection(collection_name)
    collection = Collection.where(:collection_name => collection_name).first
    collection || Collection.create!(:collection_name => collection_name)
  end
  

end

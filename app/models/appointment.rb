class Appointment < ApplicationRecord
    include Elasticsearch::Model
    
    belongs_to :doctor
end

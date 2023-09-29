class Appointment < ApplicationRecord
    include Elasticsearch::Model
    belongs_to :doctor
    belongs_to :doctor_schedule
    belongs_to :pacient
  
    validates :date, presence: true
    belongs_to :medical_center
end

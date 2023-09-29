class DoctorSchedule < ApplicationRecord
    belongs_to :doctor
    has_many :appointments
  
    validates :start_time, :end_time, presence: true
  end
  
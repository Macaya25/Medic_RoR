class Doctor < ApplicationRecord
    belongs_to :medical_center
    has_many :appointments
    #belongs_to :specialty
    has_many :doctor_schedules
    #validates :specialty, presence: true
    validates :name, presence: true
end

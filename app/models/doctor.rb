class Doctor < ApplicationRecord
    #belongs_to :specialty
    belongs_to :medical_center
    has_many :appointments
    has_many :doctor_schedules
    validates :specialty, presence: true
    validates :name, presence: true
end

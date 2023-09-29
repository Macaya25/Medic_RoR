class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :medical_center
end

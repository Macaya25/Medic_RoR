class Doctor < ApplicationRecord
    #belongs_to :specialty
    #belongs_to :clinic
    has_many :appointments
end

class Specialty < ApplicationRecord
    has_many :doctors, class_name: 'Doctors', foreign_key: 'speciality_id'
end

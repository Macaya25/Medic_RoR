class Institution < ApplicationRecord
    has_many :medical_centers, class_name: 'MedicalCenter', foreign_key: 'institution_id'
end

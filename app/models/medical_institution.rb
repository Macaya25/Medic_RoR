class MedicalInstitution < ApplicationRecord
    has_many :medical_centers, class_name: 'MedicalCenter', foreign_key: 'institution_id'
end

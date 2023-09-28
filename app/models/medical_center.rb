class MedicalCenter < ApplicationRecord
    belongs_to :institution, class_name: 'MedicalInstitution'
end

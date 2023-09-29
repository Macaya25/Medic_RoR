class AddInstitutionToMedicalCenters < ActiveRecord::Migration[7.1]
  def change
    add_reference :medical_centers, :institution, null: false, foreign_key: true
  end
end

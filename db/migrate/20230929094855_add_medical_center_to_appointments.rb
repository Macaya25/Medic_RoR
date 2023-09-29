class AddMedicalCenterToAppointments < ActiveRecord::Migration[7.1]
  def change
    add_reference :appointments, :medical_center, null: false, foreign_key: true
  end
end

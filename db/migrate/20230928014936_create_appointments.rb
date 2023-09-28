class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :medic_center

      t.timestamps
    end

  end
end

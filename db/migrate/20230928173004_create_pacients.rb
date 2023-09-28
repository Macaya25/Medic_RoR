class CreatePacients < ActiveRecord::Migration[7.1]
  def change
    create_table :pacients do |t|
      t.string :name
      t.string :last_name
      t.string :telephone
      t.string :mail
      t.string :address
      t.string :inf

      t.timestamps
    end
  end
end

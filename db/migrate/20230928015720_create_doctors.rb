class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.boolean :gender
      t.string :specialty

      t.timestamps
    end
  end
end

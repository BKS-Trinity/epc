class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :year
      t.integer :month
      t.integer :day
      t.integer :hour
      t.integer :minute
      t.references :medical_case, index: true

      t.timestamps
    end
  end
end

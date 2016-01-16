class CreateMedicalRecords < ActiveRecord::Migration
  def change
    create_table :medical_records do |t|
      t.references :patient, index: true

      t.timestamps
    end
  end
end

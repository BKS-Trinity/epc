class CreateMedicalCases < ActiveRecord::Migration
  def change
    create_table :medical_cases do |t|
      t.date :onsetofdisease
      t.references :medical_record, index: true
      t.references :disease, index: true
      t.references :doctor, index: true

      t.timestamps
    end
  end
end

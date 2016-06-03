class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.date :dateofwriteout
      t.date :expirydate
      t.references :medical_case, index: true

      t.timestamps
    end
  end
end

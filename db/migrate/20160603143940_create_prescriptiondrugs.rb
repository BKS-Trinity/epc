class CreatePrescriptiondrugs < ActiveRecord::Migration
  def change
    create_table :prescriptiondrugs do |t|

      t.timestamps
    end
  end
end

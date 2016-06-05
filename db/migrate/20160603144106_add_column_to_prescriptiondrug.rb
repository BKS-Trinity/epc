class AddColumnToPrescriptiondrug < ActiveRecord::Migration
  def change
	  add_column :prescriptiondrugs, :prescription_id, :integer
    add_column :prescriptiondrugs, :drug_id, :integer
  end
end

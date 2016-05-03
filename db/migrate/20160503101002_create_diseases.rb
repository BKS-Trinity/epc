class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.string :name
      t.string :icd10

      t.timestamps
    end
  end
end

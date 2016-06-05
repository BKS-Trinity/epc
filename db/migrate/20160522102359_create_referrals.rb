class CreateReferrals < ActiveRecord::Migration
  def change
    create_table :referrals do |t|
      t.date :dateofwriteout
      t.date :expirydate
      t.string :to
      t.text :note
      t.references :medical_case, index: true

      t.timestamps
    end
  end
end

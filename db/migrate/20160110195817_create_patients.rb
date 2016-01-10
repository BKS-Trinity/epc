class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.date :dateofbirth
      t.string :sex
      t.string :email
      t.string :phone
      t.string :mobile
      t.string :street
      t.string :city
      t.string :postcode
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end

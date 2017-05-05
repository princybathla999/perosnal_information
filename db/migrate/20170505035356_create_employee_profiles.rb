class CreateEmployeeProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :employee_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :sin
      t.date :dob
      t.string :address_1
      t.string :address_2
      t.string :street
      t.string :city
      t.integer :province
      t.integer :country

      t.timestamps
    end
  end
end

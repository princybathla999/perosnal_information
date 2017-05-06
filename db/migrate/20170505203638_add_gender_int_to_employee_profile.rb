class AddGenderIntToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :employee_profiles, :sex, :integer
  end
end

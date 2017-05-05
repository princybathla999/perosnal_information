class AddPersonalFieldsToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :employee_profiles, :father_name, :string
    add_column :employee_profiles, :mother_name, :string
  end
end

class AddFieldsToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :employee_profiles, :telephone, :string
    add_column :employee_profiles, :postal_code, :string
    add_column :employee_profiles, :nationality, :string
  end
end

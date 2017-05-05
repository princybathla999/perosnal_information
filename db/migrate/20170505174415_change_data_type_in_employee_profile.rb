class ChangeDataTypeInEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
        change_column :employee_profiles, :province, :string
        change_column :employee_profiles, :country, :string
  end
end

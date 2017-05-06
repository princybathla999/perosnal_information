class ChangeDataTypeOfStatusEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    change_column :employee_profiles, :status, :string
  end
end

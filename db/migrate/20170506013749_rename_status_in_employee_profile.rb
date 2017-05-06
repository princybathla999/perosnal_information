class RenameStatusInEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    rename_column :employee_profiles, :status, :relation_status
  end
end

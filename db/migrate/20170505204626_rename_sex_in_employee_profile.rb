class RenameSexInEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    rename_column :employee_profiles, :sex, :status
  end
end

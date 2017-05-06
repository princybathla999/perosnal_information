class AddSpouseToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :employee_profiles, :spouse_name, :string
  end
end

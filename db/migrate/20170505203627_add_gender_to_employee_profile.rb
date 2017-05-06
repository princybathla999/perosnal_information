class AddGenderToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :employee_profiles, :gender, :string
  end
end

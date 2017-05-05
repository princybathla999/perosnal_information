class AddUserIdToEmployeeProfile < ActiveRecord::Migration[5.0]
  def change
    add_reference :employee_profiles, :user, foreign_key: true
  end
end

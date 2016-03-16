class FixAdminIdColumnName < ActiveRecord::Migration
  def change
    rename_column :points, :admin_id, :employee_id
  end
end

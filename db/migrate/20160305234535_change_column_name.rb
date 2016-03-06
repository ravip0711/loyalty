class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column :employees, :password_digest, :passcode
  end
end

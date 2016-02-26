class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :user_name
      t.string :password_digest

      t.timestamps
    end
  end
end

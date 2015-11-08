class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.integer :point_total
      t.integer :admin_id
      t.integer :customer_id

      t.timestamps
    end
  end
end

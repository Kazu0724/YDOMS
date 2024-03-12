class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|

      t.integer :address_id
      t.integer :item_id
      t.integer :admin_id
      t.integer :employee_id
      t.date :date
      t.time :start_time
      t.time :end_time
      t.integer :amount
      t.boolean :status, default: true

      t.timestamps
    end
  end
end

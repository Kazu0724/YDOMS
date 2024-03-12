class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|

      t.integer :work_id
      t.integer :employee_id
      t.string :body

      t.timestamps
    end
  end
end

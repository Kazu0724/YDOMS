class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|

      t.integer :genre_id
      t.string :name
      t.string :postal_code
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end

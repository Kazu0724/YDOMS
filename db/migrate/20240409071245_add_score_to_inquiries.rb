class AddScoreToInquiries < ActiveRecord::Migration[6.1]
  def change
    add_column :inquiries, :score, :decimal, precision: 5, scale: 3
  end
end

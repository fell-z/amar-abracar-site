class CreateTransfers < ActiveRecord::Migration[8.1]
  def change
    create_table :transfers do |t|
      t.integer :type
      t.string :title
      t.text :description
      t.decimal :amount

      t.timestamps
    end
  end
end

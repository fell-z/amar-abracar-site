class CreateDocuments < ActiveRecord::Migration[8.1]
  def change
    create_table :documents do |t|
      t.string :name
      t.integer :doctype, default: 2

      t.timestamps
    end
  end
end

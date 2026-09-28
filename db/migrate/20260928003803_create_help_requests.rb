class CreateHelpRequests < ActiveRecord::Migration[8.1]
  def change
    create_table :help_requests do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :address

      t.timestamps
    end
  end
end

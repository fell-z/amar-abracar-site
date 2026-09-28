class RenameTypeToTransferDirection < ActiveRecord::Migration[8.1]
  def change
    change_table :transfers do |t|
      t.rename :type, :direction
    end
  end
end

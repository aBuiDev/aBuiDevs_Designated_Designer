class RemoveClientIdFromMessages < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages, :client_id
  end
end

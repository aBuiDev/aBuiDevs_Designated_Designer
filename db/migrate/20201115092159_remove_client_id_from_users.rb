class RemoveClientIdFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :designer_id, :bigint
    remove_column :users, :client_id, :bigint
  end
end

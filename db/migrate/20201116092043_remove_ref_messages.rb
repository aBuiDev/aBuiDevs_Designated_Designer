class RemoveRefMessages < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages, :client_id, :bigint
    remove_column :messages, :designer_id, :bigint
  end
end

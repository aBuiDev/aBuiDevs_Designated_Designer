class RemoveRefMessages < ActiveRecord::Migration[6.0]
  def change
    remove_column :messages, :client_id
    remove_column :messages, :designer_id
  end
end

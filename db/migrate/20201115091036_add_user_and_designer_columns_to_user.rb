class AddUserAndDesignerColumnsToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :client_id, :bigint
    add_column :users, :designer_id, :bigint
  end
end

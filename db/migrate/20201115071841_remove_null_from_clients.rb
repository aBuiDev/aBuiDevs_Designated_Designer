class RemoveNullFromClients < ActiveRecord::Migration[6.0]
  def change
    change_column_null :clients, :user_id, true
  end
end

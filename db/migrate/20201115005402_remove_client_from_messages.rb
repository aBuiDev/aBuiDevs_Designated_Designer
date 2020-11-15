class RemoveClientFromMessages < ActiveRecord::Migration[6.0]
  def change
    remove_reference :messages, :client, null: false, foreign_key: true
  end
end

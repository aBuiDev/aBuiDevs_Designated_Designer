class RemoveNullFalseFromMessages < ActiveRecord::Migration[6.0]
  def change
    change_column_null :messages, :chatbox_id, true
  end
end

class RemoveNullFalseFromChatboxes < ActiveRecord::Migration[6.0]
  def change
    change_column_null :chatboxes, :project_id, true
  end
end

class RemoveNullFromDesigner < ActiveRecord::Migration[6.0]
  def change
    change_column_null :designers, :user_id, true
  end
end

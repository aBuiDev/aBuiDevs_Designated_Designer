class RemoveNullFromProject < ActiveRecord::Migration[6.0]
  def change
    change_column_null :projects, :description, true
    change_column_null :projects, :brief, true
    change_column_null :projects, :price, true
  end
end

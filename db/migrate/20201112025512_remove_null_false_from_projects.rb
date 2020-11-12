class RemoveNullFalseFromProjects < ActiveRecord::Migration[6.0]
  def change
    change_column_null :projects, :designer_id, true
  end
end

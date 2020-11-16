class ChangeClientToNullableProjects < ActiveRecord::Migration[6.0]
  def change
    change_column_null :projects, :client_id, true
  end
end

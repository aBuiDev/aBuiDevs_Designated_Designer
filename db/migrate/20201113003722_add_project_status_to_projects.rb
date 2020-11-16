class AddProjectStatusToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :project_status, :integer
  end
end

class AddDesignerStatusToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :designer_status, :integer
  end
end

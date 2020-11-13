class AddClientStatusToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :client_status, :integer
  end
end

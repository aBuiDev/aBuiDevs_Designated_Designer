class RemoveMessageFromProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :message, :text
  end
end

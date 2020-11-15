class AddMessagesToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :message, :text
  end
end
